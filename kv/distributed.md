iex --sname server --cookie snowcamp

iex --sname client --cookie snowcamp

:rpc.call(:server@wlaptop, KV, :hello, [])
