FROM penolove/centos7:hadoop_core_pre

COPY start.sh /root/start.sh
COPY core-site.xml /usr/local/hadoop/etc/hadoop/core-site.xml
COPY hdfs-site.xml /usr/local/hadoop/etc/hadoop/hdfs-site.xml

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && tail -f /dev/null;
