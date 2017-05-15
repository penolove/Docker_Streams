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
make sure zookeeper already start (zoo_keep)

```
./run_info_master.sh

#stop
./stop_info_core.sh
```

inside docker, this can't be automatic
since pam auth need to interact.
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
check pipework.sh configure is right(i.e. ip setting)
check run_info_worker.sh configure is right(i.e. host name setting)

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


# For InfoSphere_IDE
edit pipework.sh
./run_info_IDE.sh

for IDE : more usage plz see
goo.gl/s6Et8Z
page 18 ~ 33

