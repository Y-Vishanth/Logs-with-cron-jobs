#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="logs_$DATE.txt"

echo "Collecting logs..."

docker logs $(docker ps -q) > $LOG_FILE

echo "Logs saved in $LOG_FILE"
