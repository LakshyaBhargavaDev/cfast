#!/bin/bash

codename="$@"
filename="${codename//'.cpp'/}"

echo "compiling"
g++ "$codename" -o filename
echo "done compiling"

echo "Running file"
./$filename
