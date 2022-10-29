#!/bin/bash

docker ps -q --filter "name=myapp" | grep -q . && docker stop myapp && docker rm -fv myapp
