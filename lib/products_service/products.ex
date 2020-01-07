defmodule Products do
  def list do
    ProductsService.Product|>  ProductsService.Repo.all
  end

  def show(id) do
    ProductsService.Product|>  ProductsService.Repo.get(id)
  end
end
