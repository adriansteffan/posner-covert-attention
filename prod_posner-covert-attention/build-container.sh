#!/bin/bash
set -e

cd ..
#rm -r prod_posner-covert-attention/webroot
cp -r src/* prod_posner-covert-attention/webroot
cp -r jspsych-6.3.1 prod_posner-covert-attention/webroot

cd prod_posner-covert-attention
docker-compose build --no-cache
docker-compose up -d
chown 33:33 -R data
