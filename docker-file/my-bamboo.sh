#!/bin/bash

docker build --no-cache -t my-bamboo . | tee build.log 2>&1 \
	&& docker run --rm -p 8085:8085 --name my-bamboo my-bamboo

