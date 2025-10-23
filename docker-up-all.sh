cd ./service/cassandra;
docker-compose up -d;

cd ../couchbase;
docker-compose up -d;

cd ../grafana;
docker-compose up -d;

cd ../kafka;
docker-compose up -d;

cd ../postgresql;
docker-compose up -d;

cd ../prometheus;
docker-compose up -d;

cd ../rabbitmq;
docker-compose up -d;

cd ../redis;
docker-compose up -d;

cd ../scylladb;
docker-compose up -d;
