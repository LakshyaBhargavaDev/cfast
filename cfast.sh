#!/bin/bash

if [ $# = 0 ]; then
  echo "No arguments Passed"
  echo "Use -h for help"
fi

codename="$1"
if [ -f "./$codename" ]; then
  filename="${codename//'.cpp'/}"

  if [ "$verbose=true" ]; then
    echo "compiling"
  fi

  g++ "$codename" -o filename
  if [ "$verbose=true" ]; then
    echo "done compiling"

    echo "output"
  fi
  echo

  if [ -f "./$filename" ]; then
    ./$filename
  fi

  echo
  echo "end"
fi
