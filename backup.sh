#!/bin/sh

# directory to backup
BDIR=$1
DESTURL=$2
BACKUPDIR=$3

# excludes file - this contains a wildcard pattern per line of files to exclude
EXCLUDES=~/bin-back/excludes

OPTS="--force --ignore-errors --delete-excluded --exclude-from=$EXCLUDES 
      --delete --backup --backup-dir=$BACKUPDIR -a"

# now the actual transfer
rsync $OPTS $BDIR $DESTURL
