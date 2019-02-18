#!/bin/bash

. KAFKA_ENV
exec $KAFKA_BIN/kafka-topics.sh --zookeeper $ZOOKEEPER $@
