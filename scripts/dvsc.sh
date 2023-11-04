#!/bin/bash

total_size=0

# Loop through each dangling volume
for volume in $(docker volume ls -qf dangling=true); do
    # Get the mountpoint of the volume
    mountpoint=$(docker volume inspect $volume --format '{{ .Mountpoint }}')
    # Calculate the size of the volume using du
    size_with_unit=$(du -sh $mountpoint | cut -f1)
    size=$(echo $size_with_unit | awk '{print int($1)}')
    unit=${size_with_unit: -1}

    echo "Volume: $volume Size: $size_with_unit"

    # Convert all sizes to KB for aggregation
    case $unit in
        K)
            total_size=$((total_size + size))
            ;;
        M)
            total_size=$((total_size + size*1024))
            ;;
        G)
            total_size=$((total_size + size*1024*1024))
            ;;
        *)
            echo "Unknown unit: $unit. Skipping volume $volume in aggregation."
            ;;
    esac
done

echo "Total size of all dangling volumes in KB: $total_size KB"

