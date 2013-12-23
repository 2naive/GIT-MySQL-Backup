INSTALLATION
================


    git clone https://github.com/2naive/GIT-MySQL-Backup.git
    chmod +x GIT-MySQL-Backup/backup.sh
    (crontab -l ; echo "30 04 * * * /bin/bash /path/to/GIT-MySQL-Backup/backup.sh /path/to/MYSQL-BACKUPS MYSQL-USER MYSQL-PASS MYSQL-DB")| crontab -

USAGE
================

    ./backup.sh /path/to/backup mysql_user mysql_pass mysql_db
