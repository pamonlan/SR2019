#!/usr/bin/bash

# Batch merge the BAM files generated by 4.downsample.sh, put all unmerged BAM files in one directory
# which do not contain any other files, run this script with one parameter which represent the depth 
# you used in 4.downsample.sh

dir=/path/to/unmerged
yhrun -n 1 -c 24 python3 multiprocess_merge.py $dir $1