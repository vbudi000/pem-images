FROM ubuntu:18.04

RUN mkdir -p /temp \
    mkdir -p /var/nfs-data/resources \
    mkdir -p /var/nfs-data/logs \
    mkdir -p /var/nfs-data/documents

COPY db2jcc4.jar /temp/

RUN useradd -u 1010 b2biuser

RUN chown -R b2biuser:b2biuser /temp
RUN chown b2biuser:b2biuser /var/nfs-data/resources
RUN chown b2biuser:b2biuser /var/nfs-data/logs
RUN chown b2biuser:b2biuser /var/nfs-data/documents

USER 1010
