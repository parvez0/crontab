#!/bin/bash

CRONFILE="/etc/cron.d/cron"
if ![[ -e $CRONFILE ]]
then
  echo "Mandatory file not mounted : $CRONFILE file doesn't exits"
  exit 1
fi

chmod +x $CRONFILE
crontab $CRONFILE
cron && tail -f /var/log/cron
