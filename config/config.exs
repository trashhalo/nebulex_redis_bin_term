import Config

config :nebulex_redis_bin_term, NebulexRedisBinTerm.Cache,
  conn_opts: [
    host: "127.0.0.1",
    port: 6379
  ]
