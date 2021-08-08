#!/bin/bash

cmd="$@"

until python ./probe-psql-container.py; do
  >&2 echo "Postgres probe unsuccessful. Sleeping..."
  sleep 2
done

>&2 echo "Postgres is ready. Connecting..."
exec $cmd


