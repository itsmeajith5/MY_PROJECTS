#!/bin/bash
BACKUP_LOC="/home/ajith/Music"
BACKUP_DEST="/backup"

# Ensure backup directory exists
mkdir -p "$BACKUP_DEST"

# Create backup with properly formatted date
tar -cvjf "$BACKUP_DEST/backup_$(date +"%Y-%m-%d_%H-%M-%S").tar.bz2" "$BACKUP_LOC"


# Remove backups older than 7 days
find "$BACKUP_DEST" -type f -name "*.tar.bz2" -mtime +7 -exec rm {} \;

