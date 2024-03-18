defmodule MySuperApp.RightMenu do
  use Ecto.Schema
  import Ecto.Changeset

  schema "right_menu" do
    field :title, :string
  end

  @doc false
  def changeset(right_menu, attrs) do
    right_menu
    |> cast(attrs, [])
    |> validate_required([])
  end
end
