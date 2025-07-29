#!/bin/sh
# A script to output disk usage for / in the format: usedGiB/totalGiB (used%)

df -k | awk '$NF=="/" {printf "%.0fGiB/%.0fGiB (%s)\n", $3/(1024*1024), $2/(1024*1024), $5}'
