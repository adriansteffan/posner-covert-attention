#!/bin/bash
set -e

cd ..
cp src prod/webroot
cp -r jspsych-6.3.1 prod/webroot

cd prod
docker-compose build --no-cache
docker-compose up -d
chown 33:33 -R data
