#!/bin/bash
#  generate build.sh, docker-compose.yml and startup scripts based on vars.env

. ./vars.env

cat files/build.templ | gomplate > build.sh
chmod 755 build.sh

cat files/docker-compose.templ | gomplate > docker-compose.yml

cat files/startup.templ | gomplate > startup
chmod 755 startup
