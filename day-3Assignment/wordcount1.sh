#!/bin/bash -x
cat access.log | grep -i -c robots.txt;
