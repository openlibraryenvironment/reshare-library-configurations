echo $banner
echo " for tenant: [$tenant]"
echo " at host:    [$host]"
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
token=$(../util/get-token.sh $tenant $username $password $protocol $host)
if [ -z $token ]; then
  echo
  echo
  echo " Exiting. Could not authenticate (get token) for user [$username]"
  echo
  exit 1
fi
echo