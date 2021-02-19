# Source this file in scripts to run them against tenant palci_si on palci-si-okapi.folio-dev.indexdata.com (username palci_admin)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

host=palci-si-okapi.reshare.indexdata.com
protocol=https
tenant=palci_si
username=palci_admin


. $DIR/login.sh