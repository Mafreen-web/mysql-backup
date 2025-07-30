# 🗄️ MySQL Backup Automation

Automated daily backups with email notifications and gzip compression.

## 🚀 Features
- Compressed backups (`gzip`)
- Configurable backup location
- Email alert integration
- Safe credential management

## ⚙️ Setup
1. Rename `config_sample.cfg` to `config.cfg`
2. Edit with your credentials:
   ```ini
   DB_HOST=your_host
   DB_USER=your_user
   DB_PASS=your_password
Make script executable:

bash
chmod +x mysql_backup.sh
Test:

bash
./mysql_backup.sh
