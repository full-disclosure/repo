#!/bin/bash

docker build -t markdown .
docker run -ti -v "$PWD:/app" markdown bash /app/entrypoint.sh

