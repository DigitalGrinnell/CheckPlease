#!/bin/bash
echo 'This is cron.sh for CheckPlease on DGDockerX'
cd /home/mcfatem/Projects/Docker/CheckPlease
docker stop checkplease
docker rm -v checkplease
/usr/bin/docker build -t checkplease .
/usr/bin/docker-compose -f docker-compose.yml run checkplease
