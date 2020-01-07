defmodule ProductsService.Repo.Migrations.Packaging do
  use Ecto.Migration

  def change do
    create table("packaging") do
      add(:name, :string)
      add(:product_id, references(:product, type: :bigint, null: false))

      timestamps
    end
  end
end
