#! /bin/bash
## usage: ./backup.sh /path/to/db_backups mysql_user mysql_pass mysql_db
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ];
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
exec >>$DIR/log.txt;
exec 2>&1
DATE=`date +"%Y.%m.%d %H:%M:%S"`
echo "Backup started: $DATE"
cd $1
chmod a+rwx $1
mysqldump -u$2 -p$3 --tab=$1 --skip-extended-insert --skip-dump-date $4
STAT=$(git diff --stat -l)
git commit -q -am "+db backup $DATE" -m "$STAT"
git push -q
git config pack.windowMemory 10m
git config pack.packSizeLimit 20m
git gc
swapoff -a
swapon -a
DATE=`date +"%Y.%m.%d %H:%M:%S"`
echo "Backup finished: $DATE"
