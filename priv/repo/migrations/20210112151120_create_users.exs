defmodule Oceanize.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :password, :string
      add :age, :integer

      timestamps()
    end

  end
end
