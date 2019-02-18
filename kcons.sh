#!/bin/bash

. KAFKA_ENV

exec $KAFKA_BIN/kafka-console-consumer.sh --bootstrap-server $KAFKA_BROKER $@
