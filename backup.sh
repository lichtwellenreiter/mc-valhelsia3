#!/bin/bash
docker run --rm -i --name minecraft_backup -v mc_valhelsia_3_mc-data:/volume -v "$(pwd)/backup:/backup" debian:bullseye \
tar -czf /backup/minecraft-$(date +%Y-%m-%d_%H-%M-%S).tar.gz -C /volume ./
