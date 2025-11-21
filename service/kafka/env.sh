_kafka_enter() {
    docker exec -it -w /opt/kafka/bin kafka-1 /bin/bash;
}

_kafka_create_topic() {
    docker exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic $@";
}

_kafka_update_topic() {
    docker exec -it kafka-1 /bin/bash -c "echo "$2" | /opt/kafka/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic $1";
}

_kafka_delete_topic() {
    docker exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $@";
}

_kafka_consume_topic() { 
    docker exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $@ --from-beginning";
}

_kafka_topics() {
    docker exec -it kafka-1 /bin/bash -c "/opt/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --list && exit";
}

