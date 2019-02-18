# kafka-test
## Simple set of helpers and test scripts to simplify a beginner's interactions with Kafka 

### Quickstart with Kafka CLI Tools 

1) First you need to install Kafka. 

   [Install Kafka on Centos 7](https://www.digitalocean.com/community/tutorials/how-to-install-apache-kafka-on-centos-7)
   
2) Start your Zookeeper instance, _then_ your Kafka service broker. Instructions above will demonstrate how to make systemd services for both applications, or, simply run them manually following steps [here](https://kafka.apache.org/quickstart#)   

3) Edit `KAFKA_ENV` helper script to point to Kafka binaries, Zookeeper & Broker sockets.

4) You can use the `ktops.sh` to create a test topic:


```
./ktops.sh --create --partitions 1 --replication-factor 1 --topic test
```

5) Start up a CLI producer in one terminal with `kprod.sh`:


```
./kprod.sh --topic test
```

6) Start up a CLI consumer in another terminal with `kcons.sh`:

```
./kcons.sh --topic test --from-beginning
```

7) Enter test data; observe the data flow from `kprod.sh` terminal to `kcons.sh` terminal:

```
mskelton@cougar kafka-test $ ./kprod.sh --topic test
>{"foo": "bar"}

----------------------------------------------------

mskelton@cougar kafka-test $ ./kcons.sh --topic test --from-beginning
{"foo": "bar"}

```

