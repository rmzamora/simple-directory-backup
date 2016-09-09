#!/bin/bash
# Get current time to be added to the backup filename
TIME=`date +%m-%d-%Y-%H-%M-%S`
# Get current time to be added to the backup filename
FILENAME=backup-$TIME.tar.gz
SRCDIR=/YOUR_SOURCE_PATH
DESDIR=/YOUR_DESTINATION_PATH
# Zip the folder
tar -cpzf $DESDIR/$FILENAME $SRCDIR
# Delete old backups and retain only the last 7 backups
ls -1 $DESDIR/backup-* | sort -r | tail -n +8 | xargs rm > /dev/null 2>&1