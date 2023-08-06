#!/bin/bash


#source directory
source_dir="/etc"


#Destination directory
destination_dir="var/backups"

# Run the backup using rsync
rsync -av "$source_dir/" "$destination_dir/"

# Log the backup action
echo "Backup completed at: $(date)" >> /var/log/backup_log.txt
