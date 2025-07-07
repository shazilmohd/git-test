#!/bin/bash
#for arg in "$2"; do
#  echo "With $2: $arg"
#done

for arg in "$@"; do
  echo "With $2: $arg"
  echo "print count $#"
done
