FROM centos:7
MAINTAINER jack
RUN yum install -y wget
RUN cd /
ADD jdk-8u221-linux-x64.tar.gz /
RUN wget http://ftp.mirror.tw/pub/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz
RUN tar zxvf apache-tomcat-7.0.96.tar.gz
ENV JAVA_HOME=/jdk1.8.0_221
ENV PATH=$PATH:/jdk1.8.0_221/bin
CMD ["/apache-tomcat-7.0.96/bin/catalina.sh", "run"]
