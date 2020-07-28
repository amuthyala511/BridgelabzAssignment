#!/bin/bash -x
cat access.log | awk ' {print $7} ' | sort -nr | uniq -c | sort -nr | tail -4;
