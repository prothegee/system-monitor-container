_kafka_enter() {
    docker exec -it -w /opt/kafka/bin kafka /bin/bash;
}

_kafka_create_topic() {
    docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $@";
    # docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $@ --config cleanup.policy=compact --config min.cleanable.dirty.ratio=0.01 --config delete.retention.ms=1000";
}

_kafka_update_topic() {
    docker exec -it kafka /bin/bash -c "echo "$2" | /opt/kafka/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic $1";
}

_kafka_delete_topic() {
    docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $@";
}

_kafka_consume_topic() { 
    docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $@";
    # docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $@ --from-beginning --property print.key=true";
}

_kafka_topics() {
    docker exec -it kafka /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --list && exit";
}

