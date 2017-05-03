cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*//g" ~/hosts.news &&\
sed -i "/invpm27/ s/.*//g" ~/hosts.news ;
sed -i "/invpm28/ s/.*//g" ~/hosts.news ;
sed -i "/invpm29/ s/.*//g" ~/hosts.news ;
sed -i "/invpm31/ s/.*//g" ~/hosts.news ;

echo '10.0.20.67 invpm27' >> ~/hosts.news;
echo '10.0.20.68 invpm28' >> ~/hosts.news;
echo '10.0.20.69 invpm29' >> ~/hosts.news;
echo '10.0.20.71 invpm31' >> ~/hosts.news;
echo '10.0.20.70 master' >> ~/hosts.news;
yes | cp  ~/hosts.news /etc/hosts ;

#SPARK config
sed -i "/export SPARK_MASTER_HOST=/ s/.*/export SPARK_MASTER_HOST=master/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/localhost/ s/.*//g" /usr/local/spark/conf/slaves;
echo 'invpm27'>> /usr/local/spark/conf/slaves
echo 'invpm28'>> /usr/local/spark/conf/slaves
echo 'invpm29'>> /usr/local/spark/conf/slaves
echo 'invpm31'>> /usr/local/spark/conf/slaves

# hadoop config
echo 'invpm27'>>/usr/local/hadoop/etc/hadoop/slaves;
echo 'invpm28'>>/usr/local/hadoop/etc/hadoop/slaves;
echo 'invpm29'>>/usr/local/hadoop/etc/hadoop/slaves;
echo 'invpm31'>>/usr/local/hadoop/etc/hadoop/slaves;

source /home/user/.bashrc;
#su - user -c "hdfs namenode -format"
su - user -c "ssh-keyscan -H invpm27 >> ~/.ssh/known_hosts"
su - user -c "ssh-keyscan -H invpm28 >> ~/.ssh/known_hosts"
su - user -c "ssh-keyscan -H invpm29 >> ~/.ssh/known_hosts"
su - user -c "ssh-keyscan -H invpm31 >> ~/.ssh/known_hosts"
su - user -c "ssh-keyscan -H master >> ~/.ssh/known_hosts"

