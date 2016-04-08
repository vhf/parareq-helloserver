#!/bin/bash
echo "generating input for $1 servers"
start=1337
end=$(($1 + 1337))

for i in `seq 100000`; do
  for port in `seq $start 1 $end`; do
    echo "xbhttp://localhost:$port" >> tmp_input;
  done
done

rm tmp_input
tr 'b' '\t' < tmp_input > input
