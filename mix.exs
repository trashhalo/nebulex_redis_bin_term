defmodule NebulexRedisBinTerm.MixProject do
  use Mix.Project

  def project do
    [
      app: :nebulex_redis_bin_term,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NebulexRedisBinTerm.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nebulex_redis_adapter, "~> 2.4"}
    ]
  end
end
