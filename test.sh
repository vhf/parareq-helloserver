#!/bin/bash
echo "testing $1 servers"
start=35000
end=$(($1 + $start - 1))

for port in `seq $start 1 $end`; do
  curl http://localhost:$port &
done
