defmodule NebulexRedisBinTerm.Cache do
  use Nebulex.Cache,
    otp_app: :nebulex_redis_bin_term,
    adapter: NebulexRedisAdapter
end
