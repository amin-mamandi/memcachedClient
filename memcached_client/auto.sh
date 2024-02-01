#!/bin/bash

# Specify the initial rps value
rps_value=70000

# Run the script for a maximum of 10 iterations
for iteration in {1..10}; do
    echo "Running with rps $rps_value..."
    
    # Run the ./run.sh script and capture the 99th percentile latency
    latency=$(./run.sh rps $rps_value | grep "99th:" | tail -n 1 | awk '{print $5}' | tr -d ',')
    
    echo "99th percentile latency: $latency"
    # Check if the 99th percentile latency is less than 1 ms
    if (( $(echo "$latency < 1.0" | bc -l) )); then
        echo "99th percentile latency is below 1 ms. Exiting."
        break
    else
        # Adjust the rps value based on some logic (you may need to customize this part)
        rps_value=$((rps_value - 1000))
        
        # Add a delay if needed
        sleep 5
    fi
done
