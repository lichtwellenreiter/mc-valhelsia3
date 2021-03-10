#!/bin/bash
cd "${0%/*}"
docker-compose -p mc_valhelsia_3 down
./backup.sh
find ./backup -mindepth 1 -mtime +7 -type f -delete
docker-compose -p mc_valhelsia_3 up -d
