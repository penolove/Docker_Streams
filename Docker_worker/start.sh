cp /etc/hosts ~/hosts.news && sed -i "/invpm27/ s/.*//g" ~/hosts.news ;
sed -i "/invpm28/ s/.*//g" ~/hosts.news ;
sed -i "/invpm29/ s/.*//g" ~/hosts.news ;
sed -i "/invpm31/ s/.*//g" ~/hosts.news ;
sed -i "/master/ s/.*//g" ~/hosts.news ;
echo '10.0.20.67 invpm27' >> ~/hosts.news;
echo '10.0.20.68 invpm28' >> ~/hosts.news;
echo '10.0.20.69 invpm29' >> ~/hosts.news;
echo '10.0.20.71 invpm31' >> ~/hosts.news;
echo '10.0.20.70 master' >> ~/hosts.news;
yes | cp  ~/hosts.news /etc/hosts ;

#SPARK config
sed -i "/export SPARK_MASTER_HOST=/ s/.*/export SPARK_MASTER_HOST=master/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/export SPARK_WORKER_CORES=/ s/.*/export SPARK_WORKER_CORES=8/g" /usr/local/spark/conf/spark-env.sh;
sed -i "/export SPARK_WORKER_MEMORY=/ s/.*/export SPARK_WORKER_MEMORY=8000m/g" /usr/local/spark/conf/spark-env.sh;
