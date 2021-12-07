#!/bin/bash


# Set Datestamp
dateTimeStamp=`date +%Y%m%d%H%M`
# Get Script Location
pushd `dirname $0` > /dev/null
scriptPath=`pwd -P`
popd > /dev/null
scriptName=`basename "$0"`
# Set Logging
logDir="/var/log/log_auto_shutdown"
mkdir -p $logDir
logFile="$scriptName$dateTimeStamp.log"
touch $logDir/$logFile

# Redirect the output to the logfile
exec > $logDir/$logFile 2>&1

echo "======================================================"
echo ""
echo "Running Script $scriptPath/$scriptName"
echo "Date: $dateTimeStamp"
echo "Host: `hostname`"
echo ""
echo "======================================================"

#this timer for auto set 8 hour
sudo shutdown -h +480
