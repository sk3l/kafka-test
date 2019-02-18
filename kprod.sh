#!/bin/bash

#!/bin/bash

. KAFKA_ENV

exec $KAFKA_BIN/kafka-console-producer.sh --broker-list $KAFKA_BROKER $@
