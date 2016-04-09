# benchmark enabler

This project spawns `n` phoenix dummy servers on ports from `35000` to `35000+n`.

* `./run_n_servers.sh 3` spawns 3 servers on ports `35000, 35001, 35002`
* `./gen_input.sh 3` creates `./input` with localhost URLs cycling through these ports
* `./test.sh 3` tests if these 3 servers are listening
