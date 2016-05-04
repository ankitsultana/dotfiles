# Checks if connected to the internet every minute
# The script is run every minute using the cronjob:
# * * * * * ~/.utilities/online-check.sh
offline=`dig 8.8.8.8 +time=1 +short google.com A | grep -c "no servers could be reached"`
if [[ "$offline" == "0" ]]; then
  rm ~/.offline
else
  touch ~/.offline
fi
