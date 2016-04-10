# parareq-helloserver

This project spawns `n` Phoenix dummy servers on ports from `35000` to `35000+n-1`. You can specify a sleep parameter `s` which will force Phoenix to wait for `s` milliseconds before answering each request.

* `./run_n_servers.sh 3` spawns 3 servers on ports `35000, 35001, 35002`
* `./run_n_servers.sh 2 5000` spawns 2 servers on ports `35000, 35001`, each of them waiting 5000ms before answering.
* `./gen_input.sh 3` creates `./input` with localhost URLs cycling through these ports. This input is suitable for use with [parareq](https://github.com/vhf/parareq)
* `./test.sh 3` tests if these 3 servers are listening
