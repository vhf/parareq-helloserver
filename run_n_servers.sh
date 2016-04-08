#!/bin/bash
pkill beam.smp
echo "spawning $1 servers"
export MIX_ENV=prod

cd helloserver
mix deps.get
mix compile

start=1337
end=$(($1 + 1337))

for port in `seq $start 1 $end`; do
  PORT=$port elixir --detached --no-halt -S mix phoenix.server &
  echo "server running on $port"
done