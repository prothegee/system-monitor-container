echo "starting cassandra";
cd ./cassandra;
docker-compose up -d;

echo "starting couchbase";
cd ../couchbase;
docker-compose up -d;

echo "starting grafana";
cd ../grafana;
docker-compose up -d;

echo "starting kafka";
cd ../kafka;
docker-compose up -d;

echo "starting postgresql";
cd ../postgresql;
docker-compose up -d;

echo "starting prometheus";
cd ../prometheus;
docker-compose up -d;

echo "starting rabbitmq";
cd ../rabbitmq;
docker-compose up -d;

echo "starting redis";
cd ../redis;
docker-compose up -d;

echo "starting scylladb";
cd ../scylladb;
docker-compose up -d;
