defmodule PhoenixFinal.Repo.Migrations.Todo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :task, :string
      add :title, :string, null: false
      add :day, :string, null: false


    end

  end
end
