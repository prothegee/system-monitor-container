_pg_psql() {
	docker exec -it postgresql /bin/bash -c "psql -U postgres";
}

