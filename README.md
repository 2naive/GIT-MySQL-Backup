INSTALLATION
================


    git clone https://github.com/2naive/GIT-MySQL-Backup.git
    mv GIT-MySQL-Backup PATH-TO-BACKUP
    cd PATH-TO-BACKUP
    chmod +x backup.sh
    (crontab -l ; echo "30 04 * * * /bin/bash PATH-TO-BACKUP/backup.sh PATH-TO-BACKUP MYSQL-USER MYSQL-PASS MYSQL-DB")| crontab -

USAGE
================

    ./backup.sh /path/to/backup mysql_user mysql_pass mysql_db
