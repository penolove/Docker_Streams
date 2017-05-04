# Docker_Streams

notice that the size of contianer : InfoSphere_master is larger than 10GB
so you should edit the docker setting i.e. dm.basesize= OXG

InfoSphere additional depency
#yum install -y perl-XML-Simple
#yum groupinstall "Development Tools"

InfoShpere_master were built from hadoop_master_hbase
InfoShpere_worker were built from hadoop_worker
but there are some InfoSphere setup steps need GUI.
thus, it don't have Dockerfile.


# For InfoSphere_master

```
./run_info_master.sh

#stop
./stop_info_core.sh
```

inside docker
```
su user
cd ~/Info_Shell
#before mkdomain, make sure zookeeper already start
./mkdomain.sh
./startdomain.sh
#stop
./stopdomain.sh
```



# For InfoSphere_worker
# build image
```
cd Docker_worker
./build.sh
```

```
./run_info_worker.sh
#stop
./stop_info_core.sh
```

inside docker
```
cd ~/Info_Shell;
#regist resource to Domain
./regist.sh
```


