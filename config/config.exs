import Config

import_config "#{Mix.env()}.exs"
config :products_service, Products.Repo,

  database: "products_service_repo",
  username: "elixir",
  password: "pass",
  hostname: "localhost"
