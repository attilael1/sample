#!/usr/bin/env sh

set -x
nmpm start &
sleep 1
echo $! > .pidfile
set +x

echo 'Starting on http://loclahost:3000...'

