#!/usr/bin/bash 
set -e;

# internal data directory for each service,
# where the data used in this local environment.
mkdir -p ./service/cassandra/data;
mkdir -p ./service/couchbase/data;
mkdir -p ./service/grafana/data;
mkdir -p ./service/kafka/data;
mkdir -p ./service/mongodb/data;
mkdir -p ./service/postgresql/data;
mkdir -p ./service/postgresql/data-postgres-1-cr;
mkdir -p ./service/postgresql/data-postgres-2-hw;
mkdir -p ./service/prometheus/data;
mkdir -p ./service/rabbitmq/data;
mkdir -p ./service/redis/data;
mkdir -p ./service/scylladb/data;

