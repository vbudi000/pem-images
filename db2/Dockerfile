FROM ibmcom/db2:11.5.7.0

RUN mkdir /var/custom
COPY create_pemdb.sql /var/custom
COPY createDB.sh /var/custom
RUN chmod a+x /var/custom/createDB.sh
