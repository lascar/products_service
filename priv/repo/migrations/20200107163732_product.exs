defmodule ProductsService.Repo.Migrations.Product do
  use Ecto.Migration

  def change do
    create table("product") do
      add(:name, :string)

      timestamps
    end
  end
end
