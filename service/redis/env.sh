_redis_cli() {
    echo -n "redis password: ";
    read -s REDIS_PASS;
    echo;  # newline setelah input tersembunyi
    docker exec -it redis redis-cli -a "$REDIS_PASS";# --no-auth-warning;
}

