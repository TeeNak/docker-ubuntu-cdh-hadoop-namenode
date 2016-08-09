FROM teenak/ubuntu-14-04-java8
MAINTAINER Taishun Nakatani <teenak77@gmail.com>

RUN wget 'https://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/cloudera.list' -O /etc/apt/sources.list.d/cloudera.list && \
    printf "Package: *\nPin: release o=Cloudera, l=Cloudera\nPin-Priority: 501\n" > /etc/apt/preferences.d/cloudera.pref && \
    wget https://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/archive.key -O archive.key && \
    apt-key add archive.key && \
    sudo apt-get update && \
    sudo apt-get -y install hadoop-hdfs-namenode=2.6.0+cdh5.8.0+1601-1.cdh5.8.0.p0.93~trusty-cdh5.8.0 && \
    sudo apt-get -y install hadoop-yarn-resourcemanager=2.6.0+cdh5.8.0+1601-1.cdh5.8.0.p0.93~trusty-cdh5.8.0


