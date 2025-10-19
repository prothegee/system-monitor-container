echo "shutting down cassandra";
cd ./cassandra;
docker-compose down;

echo "shutting down couchbase";
cd ../couchbase;
docker-compose down;

echo "shutting dow grafana";
cd ../grafana;
docker-compose down;

echo "shutting down kafka";
cd ../kafka;
docker-compose down;

echo "shutting down postgresql";
cd ../postgresql;
docker-compose down;

echo "shutting down prometheus";
cd ../prometheus;
docker-compose down;

echo "shutting down rabbitmq";
cd ../rabbitmq;
docker-compose down;

echo "shutting down redis";
cd ../redis;
docker-compose down;

echo "shutting down scylladb";
cd ../scylladb;
docker-compose down;
