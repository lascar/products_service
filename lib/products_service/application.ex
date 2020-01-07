defmodule ProductsService.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc "OTP Application specification for ProductsService"

  use Application

  def start(_type, _args) do
    Supervisor.start_link(children(), opts())
  end

  defp children do
    [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: ProductsService.Endpoint,
          options: [port: Application.get_env(:products_service, :port)]
      ),
      Products.Repo
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: ProductsService.Supervisor
    ]
  end
end
