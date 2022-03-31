#!/usr/bin/env bash

# Show the currently occupied harvest time slots.

function usage {
  cat << EOU
Usage: $0 <format> <consortium>
Where:
  format : short|long (default=short)
  consortium : palci|cny|iplc (default=palci)

The long format requires 'xq' (i.e. https://github.com/kislyuk/yq)

EOU
  exit 2
}

format=${1:-short}
consortium=${2:-palci}

if [ "${consortium}" != "palci" ] && [ "${consortium}" != "cny" ] && [ "${consortium}" != "iplc" ]; then
  echo "Option: consortium: '${consortium}' is not known."
  usage >&2
fi
if [ "${format}" != "short" ] && [ "${format}" != "long" ]; then
  echo "Option: format: must be [short|long]."
  usage >&2
fi
cmd_xq=$(command -v xq)
if [ "${format}" == "long" ] && [ ! "${cmd_xq}" ]; then
  echo "Option: format: long does require 'xq'"
  usage >&2
fi

read -esp "Harvester password: " password
echo

content=$(curl -w '\n' -s -S "https://harvester_admin:${password}@${consortium}-harvester.reshare.indexdata.com/harvester/records/harvestables")

if [ "${format}" == "long" ]; then
  echo "${content}" \
    | TZ=/usr/share/zoneinfo/UTC "${cmd_xq}" \
    -r '.harvestables.harvestableBrief[] | [ (.nextHarvestSchedule | fromdate | gmtime | strftime("%H:%M")), .enabled, .id, .name ] | @tsv' \
    | sort
else
  echo "${content}" | xmllint --format - | grep 'nextHarvestSchedule' \
    | sed -E 's#</.*$##' | cut -d T -f 2 | sort
fi

