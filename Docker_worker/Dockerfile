FROM penolove/centos7:InfoSphere_worker

COPY start.sh /root/start.sh
COPY core-site.xml /usr/local/hadoop/etc/hadoop/core-site.xml
COPY hdfs-site.xml /usr/local/hadoop/etc/hadoop/hdfs-site.xml

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh ; source /root/.bashrc;  /root/Info_Shell/regist.sh && tail -f /dev/null;
