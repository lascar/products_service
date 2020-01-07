defmodule ProductsService.Variety do
  use Ecto.Schema

  schema "variety" do
    field(:name, :string)
    field(:product_id, :integer)
    timestamps(type: :utc_datetime)
  end
end
