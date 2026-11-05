#!/bin/bash

#If no options are passed
if [ $# = 0 ]; then
  echo "No arguments passed"
  echo "Use -h for help"
fi

#menu options
while getopts "hv" OPTION; do
  case $OPTION in

  v)
    ECHO="true"
    echo 0
    ;;

  h)
    echo "Usage:"
    exit 0
    ;;

  esac
done
#main compiling
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
j
