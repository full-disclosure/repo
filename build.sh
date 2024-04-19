#!/bin/bash

docker build -t markdown .^C
docker run -ti -v "$PWD:/app" markdown bash /app/entrypoint.sh

