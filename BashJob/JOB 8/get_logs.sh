#!/bin/bash


date=$(date '+%d-%m-%Y-%H-%M')

last grep "ubuntu" | wc -l > number_connection-$date 

mkdir -p /home/ubuntu/BashJob/JOB\ 8/Backup 

tar -cvf /home/ubuntu/BashJob/JOB\ 8/Backup/number_connection-$date.tar /home/ubuntu/BashJob/JOB\ 8/number_connection-$date










