#!/bin/bash

 sudo killall -9 loader 
# max throughput
if [ "$1" == "th" ]; then
    ./loader -a ../twitter_dataset/twitter_dataset_5  -s servers.txt -g 0.8 -c 200 -w 8 -T 1 -D 1024
# rps
elif [ "$1" == "rps" ]; then
    ./loader -a ../twitter_dataset/twitter_dataset_5  -s servers.txt -g 0.8 -c 200 -w 200 -T 1 -D 1024 -r $2 -m
# scale&warmup
elif [ "$1" == "sw" ]; then
    ./loader -a ../twitter_dataset/twitter_dataset_5 -s servers.txt -c 32 -w 32 -S 1 -T 1 -j -D 1024 
else
    echo "Invalid option. Please specify either 'th' or 'sw' or 'rps' as the first argument."
fi


