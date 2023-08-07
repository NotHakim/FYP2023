#!/bin/bash


#source directory
source_dir="/etc"


#Destination directory
destination_dir="var/backups"

# Run the backup using rsync
rsync -av "$source_dir/" "$destination_dir/"

#to check if the dir and file exists, if does not, it will be created
if [ ! -e "/var/log/backup_log.txt" ]; then
    touch "/var/log/backup_log.txt"
fi

# Log the backup action
echo "Backup completed at: $(date)" >> /var/log/backup_log.txt
