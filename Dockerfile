FROM registry.access.redhat.com/ubi8/ubi:latest
RUN yum update -y
RUN yum install -y gcc httpd tree
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
