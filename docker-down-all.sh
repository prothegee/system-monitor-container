cd ./service/cassandra;
docker-compose down;

cd ../couchbase;
docker-compose down;

cd ../grafana;
docker-compose down;

cd ../kafka;
docker-compose down;

cd ../postgresql;
docker-compose down;

cd ../prometheus;
docker-compose down;

cd ../rabbitmq;
docker-compose down;

cd ../redis;
docker-compose down;

cd ../scylladb;
docker-compose down;
