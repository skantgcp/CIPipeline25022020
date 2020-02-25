##### First Dockerfile implementation
FROM ubuntu:16.04
LABEL MAINTAINER skant.gupta@oracle.com
RUN mkdir /copy
COPY Sample.sh /copy/Sample.sh
RUN chmod +x /copy/Sample.sh
#CMD sh /copy/Sample.sh /etc/hosts
ENTRYPOINT ["sh","/copy/Sample.sh"]
CMD ["/etc/resolv.conf"]
