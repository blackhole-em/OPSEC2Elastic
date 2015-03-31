#!/bin/bash
# Script to kick off the LEA clients, which will pump their logs into Rsyslog
FWGHOME="/usr/local/fw1-loggrabber"
LOGGRABBER_CONFIG_PATH=/usr/local/fw1-loggrabber/etc
LOGGRABBER_TEMP_PATH=/tmp
export LOGGRABBER_CONFIG_PATH
export LOGGRABBER_TEMP_PATH
MYCPS="1.1.1.1 2.2.2.2 3.3.3.3"
for CPBOX in $MYCPS; do
    "$FWGHOME/bin/fw1-loggrabber" -c "$FWGHOME/etc/fw1-loggrabber.conf" -l "$FWGHOME/etc/$CPBOX.lea.conf" -f fw.log --online &
done
