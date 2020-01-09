defmodule ProductsService.Products do
  require IEx
  @doc ~S"""
  Controller products'request

  ## Usage

      get "/products" => list
      get "/products/:id" => show(id)

  """
  import Ecto.Query, only: [from: 2]

  def list do
    query = from p in "product", select: p.name
    ProductsService.Repo.all(query)
  end

  def show(id) do
    # IEx.pry()
    {id_to_query, _} = :string.to_integer(id)
      query = from p in "product", select: p.name, where: p.id == ^id_to_query
    ProductsService.Repo.all(query)
  end
end
