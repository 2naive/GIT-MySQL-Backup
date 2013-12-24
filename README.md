### INSTALLATION

    git clone https://github.com/2naive/GIT-MySQL-Backup.git
    (crontab -l ; echo "30 04 * * * /bin/bash /path/to/GIT-MySQL-Backup/backup.sh /path/to/MYSQL-BACKUPS MYSQL-USER MYSQL-PASS MYSQL-DB")| crontab -

### GIT CONFIGURATION

Git should be configured in backups directory. To prevent asking for password when using git push command use e.g.:

    git add remote origin https://login:password@bitbucket.org/login/repo.git
    
or fix .git/config:

    [remote "origin"]
        fetch = +refs/heads/*:refs/remotes/origin/*
        url = https://login:password@bitbucket.org/login/repo.git


###USAGE
    ./backup.sh /path/to/backup mysql_user mysql_pass mysql_db
