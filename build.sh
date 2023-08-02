#!/usr/bin/env bash

. ./vars.env
docker network create myappNET
docker image build --build-arg USERUID=38317 -t tomcatapp .
