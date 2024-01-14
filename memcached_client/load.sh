#!/bin/bash

# max throughput
if [ "$1" == "th" ]; then
    ./loader -a ../twitter_dataset/twitter_dataset_5 -s servers.txt -g 0.8 -c 4 -w 4 -T 1 -D 10240
# scale&warmup
elif [ "$1" == "sw" ]; then
    ./loader -a ../twitter_dataset/twitter_dataset_unscaled -o ../twitter_dataset/twitter_dataset_5 -s servers.txt -c 4 -w 4 -S 5 -T 1 -j -D 10240
else
    echo "Invalid option. Please specify either 'th' or 'sw'."
fi