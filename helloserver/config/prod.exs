use Mix.Config

config :hello, Hello.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: System.get_env("PORT")],
  cache_static_lookup: false,
  server: true

config :logger, level: :error
