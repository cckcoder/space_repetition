#!/bin/bash
docker run -i --rm --net=host -e PGPASSWORD=dev2original postgres /usr/bin/pg_dump -h localhost -p 5343 -U root space_repetition | gzip -9 -f > init/space_repetition.sql.gz

