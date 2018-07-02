#!/bin/bash
echo 'This is cron.sh for CheckPlease on DGDockerX'
cd /home/mcfatem/Projects/Docker/CheckPlease
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
/usr/bin/docker build -t CheckPlease .
/usr/bin/docker-compose -f docker-compose.yml run CheckPlease
