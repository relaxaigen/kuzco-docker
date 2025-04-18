#!/bin/bash

# Usage: ./run_kuzco.sh <WORKER_ID> <CODE_ID> <CONTAINER_NAME>
WORKER_ID=$1
CODE_ID=$2
CONTAINER_NAME=$3

docker build -t kuzco-worker-image .

docker run -it --rm \
  --name $CONTAINER_NAME \
  kuzco-worker-image \
  bash -c "kuzco worker start --worker $WORKER_ID --code $CODE_ID"
