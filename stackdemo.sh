#!/bin/bash

echo "docker stack deploy --compose-file docker-compose.yml stackdemo"

docker stack deploy --compose-file docker-compose.yml stackdemo

echo "connect :8080 for visualizer, :35131 for map tile server"
