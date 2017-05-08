FROM penolove/centos7:InfoSphere_master

COPY start.sh /root/start.sh
COPY slaves /usr/local/spark/conf/slaves
COPY slaves /usr/local/hadoop/etc/hadoop/slaves;


ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh ; source /root/.bashrc && tail -f /dev/null;
