#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <arg1> <arg2>"
    exit 1
fi

echo "Argument 1: $1"
echo "Argument 2: $2"

