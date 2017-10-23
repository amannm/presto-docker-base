FROM amannm/java8-docker-base
MAINTAINER Amann Malik <amannmalik@gmail.com>

ENV PRESTO_VERSION 0.187
ENV PRESTO_HOME /usr/local/presto-server

RUN wget http://repo1.maven.org/maven2/com/facebook/presto/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz && \
    tar -zxf /presto-server-${PRESTO_VERSION}.tar.gz && \
    rm /presto-server-${PRESTO_VERSION}.tar.gz && \
    mv presto-server-${PRESTO_VERSION} ${PRESTO_HOME}