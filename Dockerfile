FROM mysql
COPY backup_database.sh /docker_backup_database.sh
RUN chmod +x /docker_backup_database.sh
VOLUME [ "/backup" ]
ENV MYSQL_HOST=mysql
USER root

ENTRYPOINT /docker_backup_database.sh
