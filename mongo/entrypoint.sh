#!/bin/sh
# Substitute environment variables in the template and save it as mongo-init.js
envsubst < /mongo-init-template.js > /docker-entrypoint-initdb.d/mongo-init.js

# Run the original MongoDB entrypoint
exec docker-entrypoint.sh "$@"
