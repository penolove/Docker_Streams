FROM penolove/centos7:hadoop_master_hbase_pre

COPY start.sh /root/start.sh

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && tail -f /dev/null
