FROM penolove/centos7:hadoop_core_pre

RUN wget http://apache.stu.edu.tw/hbase/stable/hbase-1.2.5-bin.tar.gz
RUN tar -zxvf hbase-1.2.5-bin.tar.gz -C /usr/local/
RUN mv /usr/local/hbase-1.2.5 /usr/local/Hbase
RUN chown -R user:user /usr/local/Hbase/
COPY start.sh /root/start.sh
COPY core-site.xml /usr/local/hadoop/etc/hadoop/core-site.xml
COPY hdfs-site.xml /usr/local/hadoop/etc/hadoop/hdfs-site.xml
COPY hbase-site.xml /usr/local/Hbase/conf/hbase-site.xml

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && tail -f /dev/null;
