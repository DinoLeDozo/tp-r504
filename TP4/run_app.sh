#!/bin/bash

docker rm -f tp4-app 2>/dev/null

docker run -d --name tp4-app \
  --network net-tp4 \
  -p 5000:5000 \
  -v "$PWD/srv:/srv" \
  im-tp4-bm
