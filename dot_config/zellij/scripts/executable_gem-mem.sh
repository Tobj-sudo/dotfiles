#!/bin/sh
# A script to output memory usage in the format: usedGB/totalGB (used%)

free -m | awk '/Mem:/ {printf "%.1fGB/%.0fGB (%.1f%%)\n", ($2-$7)/1024, $2/1024, ($2-$7)/$2*100}'
