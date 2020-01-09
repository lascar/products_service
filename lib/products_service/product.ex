defmodule ProductsService.Product do
  @doc ~S"""
  Parses the given `line` into a command.

  ## Examples

      iex> %ProductsService.Product{name: "Product 1"}|> ProductsService.Repo.insert
			{:ok,
			 %ProductsService.Product{
				 __meta__: #Ecto.Schema.Metadata<:loaded, "product">,
				 id: 5,
				 inserted_at: ~U[2020-01-08 07:18:02Z],
				 name: "Product 4",
				 updated_at: ~U[2020-01-08 07:18:02Z]
			 }}

  """
  use Ecto.Schema

  schema "product" do
    field(:name)
    timestamps(type: :utc_datetime)
  end
end
