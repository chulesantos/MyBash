#!/bin/bash

docker stop -t0 $(docker ps -qa)

docker container prune
