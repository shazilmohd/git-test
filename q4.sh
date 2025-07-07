#!/bin/bash

set -x

SERVICE="apache2"

if ! pgrep -x "$SERVICE" > /dev/null; then
  echo "$SERVICE is not running. Restarting..."
  systemctl start $SERVICE
else
  echo "$SERVICE is running."
fi
