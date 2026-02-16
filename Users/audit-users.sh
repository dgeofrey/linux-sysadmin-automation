#!/bin/bash
# Author: David Geofrey
echo "Checking users with no login in last 90 days on davidg-tech servers..."
lastlog -b 90

