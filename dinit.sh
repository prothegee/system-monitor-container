#!/usr/bin/bash 
set -e;

# internal data directory for each service,
# where the data used in this local environment.
mkdir ./service/cassandra/data;
mkdir ./service/couchbase/data;
mkdir ./service/grafana/data;
mkdir ./service/kafka/data;
mkdir ./service/postgresql/data;
mkdir ./service/prometheus/data;
mkdir ./service/rabbitmq/data;
mkdir ./service/redis/data;
mkdir ./service/scylladb/data;

