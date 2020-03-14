#!/bin/bash

# Script to clean up images

# AUthor Ed Win

# March 14

for i in $(docker images | awk '{print$3}' | grep -v IMAGE)
do
docker rmi -f ${i}
done
