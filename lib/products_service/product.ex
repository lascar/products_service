defmodule ProductsService.Product do
  use Ecto.Schema

  schema "product" do
    field(:name)
    timestamps(type: :utc_datetime)
  end
end
