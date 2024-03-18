defmodule MySuperApp.LeftMenu do
  use Ecto.Schema
  import Ecto.Changeset

  schema "left_menu" do
    field :title, :string
  end

  
  def changeset(left_menu, attrs) do
    left_menu
    |> cast(attrs, [:title])
    |> validate_required([:title])
    |> validate_length(:title, min: 4)
  end
end

# MySuperApp.Repo.insert(MySuperApp.LeftMenu.changeset(%MySuperApp.LeftMenu{}, %{id: 11, title: "f"}))
