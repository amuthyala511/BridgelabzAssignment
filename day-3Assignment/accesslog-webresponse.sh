#!/bin/bash -x
cat access.log | awk ' {print $10} ' | sort -nr | uniq -c | sort -nr | head -4
