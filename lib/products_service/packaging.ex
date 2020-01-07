defmodule ProductsService.Packaging do
  use Ecto.Schema

  schema "packaging" do
    field(:name, :string)
    field(:product_id, :integer)
    timestamps(type: :utc_datetime)
  end
end
