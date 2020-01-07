# ./config/test.exs

use Mix.Config

config :products_service, port: 4002
config :products_service, ProductsService.Repo,
  database: "products_service_repo_test",
  username: "elixir",
  password: "pass",
  hostname: "localhost"
