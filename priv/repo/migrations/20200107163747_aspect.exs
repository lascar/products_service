defmodule ProductsService.Repo.Migrations.Aspect do
  use Ecto.Migration

  def change do
    create table("aspect") do
      add(:name, :string)
      add(:product_id, references(:product, type: :bigint, null: false))

      timestamps
    end
  end
end
