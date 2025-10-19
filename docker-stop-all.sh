echo "stopping cassandra";
cd ./cassandra;
docker-compose stop;

echo "stopping couchbase";
cd ../couchbase;
docker-compose stop;

echo "stopping grafana";
cd ../grafana;
docker-compose stop;

echo "stopping kafka";
cd ../kafka;
docker-compose stop;

echo "stopping postgresql";
cd ../postgresql;
docker-compose stop;

echo "stopping prometheus";
cd ../prometheus;
docker-compose stop;

echo "stopping rabbitmq";
cd ../rabbitmq;
docker-compose stop;

echo "stopping redis";
cd ../redis;
docker-compose stop;

echo "stopping scylladb";
cd ../scylladb;
docker-compose stop;
