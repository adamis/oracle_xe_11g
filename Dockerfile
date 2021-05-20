# Dockerfile
FROM epiclabs/docker-oracle-xe-11g
#ADD ./dump/init.sql /docker-entrypoint-initdb.d/

#FROM wnameless/oracle-xe-11g

ENV maxsize="2G" \
 syspasswd="oracle" \
 timezone=""

ADD ./dump/init.sql /docker-entrypoint-initdb.d/
#ADD dump /data/resources
#CMD /data/resources/entrypoint.sh && sleep infinity