defmodule ProductsService.Aspect do
  use Ecto.Schema

  schema "aspect" do
    field(:name, :string)
    field(:product_id, :integer)
    timestamps(type: :utc_datetime)
  end
end
