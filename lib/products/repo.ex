defmodule Products.Repo do
  use Ecto.Repo,
    otp_app: :products_service,
    adapter: Ecto.Adapters.Postgres
end
