#!/bin/bash

wget -O ./taiwan.osm.pbf http://download.geofabrik.de/asia/taiwan-latest.osm.pbf
wget -O ./taiwan.poly https://download.geofabrik.de/asia/taiwan.poly

docker run \
    -v /home/seke/docker/osm/openstreetmap-tile-server/taiwan.osm.pbf:/data.osm.pbf \
    -v /home/seke/docker/osm/openstreetmap-tile-server/taiwan.poly:/data.poly \
    -v openstreetmap-data:/var/lib/postgresql/10/main \
    twcarto:v0 \
    import
