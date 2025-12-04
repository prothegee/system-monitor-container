_pg_psql() {
	docker exec -it postgresql-1 /bin/bash -c "psql -U postgres";
}

