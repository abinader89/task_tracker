#!/bin/bash

export MIX_ENV=prod
export PORT=4999

echo "Stopping old copy of app, if any..."

_build/prod/rel/task_tracker2/bin/task_tracker2 stop || true

echo "Starting app..."

#_build/prod/rel/task_tracker2/bin/task_tracker2 foreground 
PORT=4999 mix phx.server

