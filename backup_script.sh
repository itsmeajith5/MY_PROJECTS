#!/bin/bash
BACKUP_LOC="/home/ajith/TEST"
BACKUP_DEST="/home/data_$(date +%F).tar.bz2"
tar -cvjf "$BACKUP_DEST" "$BACKUP_LOC"
echo "Backup completed: $BACKUP_DEST"

date
