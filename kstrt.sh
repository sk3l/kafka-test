#!/bin/bash

. KAFKA_ENV

echo -e "\n~~~ Kafka startup ~~~"

echo -e "\nStarting zookeper..."
$KAFKA_BIN/zookeeper-server-start.sh $KAFKA_DIR/config/zookeeper.properties &

echo -e "\nStarting kafka..."
$KAFKA_BIN/kafka-server-start.sh $KAFKA_DIR/config/server.properties &
