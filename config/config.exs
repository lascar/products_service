import Config

import_config "#{Mix.env()}.exs"

config :products_service, ecto_repos: [ProductsService.Repo]
