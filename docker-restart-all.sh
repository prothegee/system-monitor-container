#!/usr/bin/bash
set -e;

cd ./service/cassandra;
docker-compose restart;

cd ../couchbase;
docker-compose restart;

cd ../grafana;
docker-compose restart;

cd ../kafka;
docker-compose restart;

cd ../mongodb;
docker-compose restart;

cd ../mysql;
docker-compose restart;

cd ../postgresql;
docker-compose restart;

cd ../prometheus;
docker-compose restart;

cd ../rabbitmq;
docker-compose restart;

cd ../redis;
docker-compose restart;

cd ../scylladb;
docker-compose restart;

