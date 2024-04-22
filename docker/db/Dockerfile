FROM mysql:5.7

ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && chown -R mysql:root /var/lib/mysql/

COPY ./docker-entrypoint-initdb.d/custom-entrypoint.sh /docker-entrypoint-initdb.d/custom-entrypoint.sh
COPY my.cnf /etc/mysql/conf.d/my.cnf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]

EXPOSE 3306
