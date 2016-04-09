#!/bin/bash
echo "testing $1 servers"
start=1337
end=$(($1 + 1337 - 1))

for port in `seq $start 1 $end`; do
  curl http://localhost:$port &
done
