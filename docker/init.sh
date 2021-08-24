#!/bin/sh -e

cd server/
echo "Starting server with args: ${IW4X_ARGS}"
wine /iw4x/server/iw4x.exe ${IW4X_ARGS}
