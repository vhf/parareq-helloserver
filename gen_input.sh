#!/bin/bash
rm -f tmp_input
n=$1
total=50000
echo "generating $total inputs for $1 servers"
start=1337
end=$((n + 1337 - 1))
ports="$(seq $start 1 $end)"

expected=$((total/n))
got=$((expected * n))
diff=$((total - got))
new_end=$((diff + 1337 - 1))

for i in `seq $expected`; do
  for port in $ports; do
    echo "x|http://localhost:$port" >> tmp_input;
  done
done
if [[ $diff -gt $zero ]]; then
  extra_ports=$(seq $start 1 $new_end)
  for port in $extra_ports; do
    echo "x|http://localhost:$port" >> tmp_input;
  done
fi

tr '|' '\t' < tmp_input > input
rm tmp_input
