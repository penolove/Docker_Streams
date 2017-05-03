FROM penolove/centos7:InfoSphere

COPY start.sh /root/start.sh

ENTRYPOINT /usr/sbin/sshd -D & /root/start.sh && tail -f /dev/null
