# ./config/dev.exs

use Mix.Config

config :products_service, port: 4001
config :products_service, ProductsService.Repo,

  database: "products_service_repo",
  username: "elixir",
  password: "pass",
  hostname: "localhost"
