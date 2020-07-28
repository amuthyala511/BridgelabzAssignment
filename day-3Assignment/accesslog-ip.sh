#!/bin/bash -x
cat access.log | awk ' {print $1} ' | sort -nr | uniq -c | sort -nr | tail
