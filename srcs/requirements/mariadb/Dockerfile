FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get -y install mariadb-server

EXPOSE 3306

COPY ./tools/mariadb.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /usr/local/bin/mariadb.sh /usr/local/bin/wordpress.sql

ENTRYPOINT [ "mariadb.sh" ]

CMD ["mysqld"]
