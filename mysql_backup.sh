bash
#!/bin/bash
# MySQL Backup Script
# Usage: ./mysql_backup.sh --db=yourdb --user=admin

# Load configuration
source config.cfg

# Create backup directory if not exists
mkdir -p $BACKUP_DIR

# Backup filename with timestamp
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql.gz"

# Perform backup
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME | gzip > $BACKUP_FILE

# Verify backup
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup successful: $BACKUP_FILE"
    # Add email alert here (see README for example)
else
    echo "Backup failed!" >&2
    exit 1
fi
