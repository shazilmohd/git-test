#!/bin/bash
servers=("web1" "web2" "db1")

for srv in "${servers[@]}"; do
  echo "Deploying to $srv"
done
########################################
