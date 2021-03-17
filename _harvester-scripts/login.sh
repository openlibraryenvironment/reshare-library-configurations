echo $banner
echo " to Harvester at:    [$host]"
echo

# Get password
echo -n "Are you sure? Enter password for [$username] to continue, otherwise hit Enter to cancel: "
read -s password

if [ -z $password ]; then
  echo
  echo
  echo " Cancelled"
  echo
  exit 1
fi

creds=$username:$password
