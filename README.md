# benchmark enabler

This project spawns `n` phoenix dummy servers on ports from `1337` to `1337+n`.

* `./run_n_servers.sh 3` spawns 3 servers on ports `1337, 1338, 1339`
* `./gen_input.sh 3` creates `./input` with localhost URLs cycling through these ports
* `./test.sh 3` tests if these 3 servers are listening
