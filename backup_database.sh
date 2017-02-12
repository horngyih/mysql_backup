#! /bin/sh
mysqldump --user=root --password=$MYSQL_ENV_MYSQL_ROOT_PASSWORD --host=$MYSQL_HOST $MYSQL_ENV_MYSQL_DATABASE > /backup/$MYSQL_ENV_MYSQL_DATABASE.sql;
tar zcvf /backup/$(date +%Y%m%d_%H%M_)$MYSQL_ENV_MYSQL_DATABASE.tar /backup/$MYSQL_ENV_MYSQL_DATABASE.sql && rm /backup/$MYSQL_ENV_MYSQL_DATABASE.sql;
