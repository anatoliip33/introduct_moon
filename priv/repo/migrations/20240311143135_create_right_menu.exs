defmodule MySuperApp.Repo.Migrations.CreateRightMenu do
  use Ecto.Migration

  def change do
    create table(:right_menu) do
      add :title, :string
    end
  end
end
