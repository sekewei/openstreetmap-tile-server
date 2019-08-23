#!/bin/bash

echo "docker run  -p 35131:80  -e UPDATES=enabled  -v openstreetmap-data:/var/lib/postgresql/10/main  -v openstreetmap-rendered-tiles:/var/lib/mod_tile  --name twcarto -d overv/openstreetmap-tile-server  run"

docker run \
    -p 35131:80 \
    -e UPDATES=enabled \
    -v openstreetmap-data:/var/lib/postgresql/10/main \
    -v openstreetmap-rendered-tiles:/var/lib/mod_tile \
    --name twcarto \
    -d twcarto:v0 \
    run
