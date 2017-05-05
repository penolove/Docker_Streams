FROM penolove/centos7:InfoSphere_master

COPY start.sh /root/start.sh

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh ; source /root/.bashrc && tail -f /dev/null;
