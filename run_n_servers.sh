#!/bin/bash
pkill beam.smp

if [ -z "$1" ]; then
  echo "$0 number_of_servers [sleep]"
  exit
fi
if [ -z "$2" ]; then
  echo "spawning $1 servers without sleep"
else
  echo "spawning $1 servers with sleep $2ms"
  export SLEEP=$2
fi

export MIX_ENV=prod

cd helloserver
mix deps.get
mix compile

start=35000
end=$(($1 + $start - 1))
for port in `seq $start 1 $end`; do
  PORT=$port nice -n 15 elixir --detached --no-halt -S mix phoenix.server &
  echo "server running on $port"
done
