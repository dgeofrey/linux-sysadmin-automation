#!/bin/bash
# Author: David Geofrey
THRESHOLD=80

df -h --output=source,pcent | tail -n +2 | while read partition usage; do
  usage=${usage%\%}  # remove %
  if [ $usage -ge $THRESHOLD ]; then
    echo "WARNING: $partition on davidg-tech server is ${usage}% full"
  fi
done

