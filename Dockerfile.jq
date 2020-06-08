FROM registry.access.redhat.com/ubi7/s2i-core

LABEL maintainer="Subin Modeel <smodeel@redhat.com>"
USER root

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum -y install curl git jq wget tree 

USER 1001

