#!/bin/bash

codename="$1"
filename="${codename//'.cpp'/}"

echo "compiling"
g++ "$codename" -o filename
echo "done compiling"

echo "output"
echo

./$filename

echo
echo "end"
