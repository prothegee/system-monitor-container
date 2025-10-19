cd ./cassandra;
docker-compose stop;

cd ../couchbase;
docker-compose stop;

cd ../grafana;
docker-compose stop;

cd ../kafka;
docker-compose stop;

cd ../postgresql;
docker-compose stop;

cd ../prometheus;
docker-compose stop;

cd ../rabbitmq;
docker-compose stop;

cd ../redis;
docker-compose stop;

cd ../scylladb;
docker-compose stop;
