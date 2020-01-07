defmodule ProductsService.Repo.Migrations.Variety do
  use Ecto.Migration

  def change do
    create table("variety") do
      add(:name, :string)
      add(:product_id, references(:product, type: :bigint, null: false))

      timestamps
    end
  end
end
