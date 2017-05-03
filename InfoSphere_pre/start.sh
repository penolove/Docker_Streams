cp /etc/hosts ~/hosts.news && sed -i "/master/ s/.*//g" ~/hosts.news &&\
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


