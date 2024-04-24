defmodule MySuperAppWeb.UsersPage do
  use MySuperAppWeb, :surface_live_view

  alias Moon.Design.Table
  alias Moon.Design.Table.Column

  alias MySuperApp.{User, Repo}

  prop(selected, :list)
  data(users, :any)

  def mount(_params, _session, socket) do
    {
      :ok,
      assign(
        socket,
        users:
          User
          |> Repo.all()
          |> Enum.map(& &1 |> Map.from_struct()),
        selected: []
      )
    }
  end

  def render(assigns) do
    ~F"""
    <Table items={user <- @users} row_click="single_row_click" {=@selected}>
      <Column label="User Name">
        {user.username}
      </Column>
      <Column label="Email">
        {user.email}
      </Column>
    </Table>
    """
  end

  def handle_event("single_row_click", %{"selected" => selected}, socket) do
    {:noreply, assign(socket, selected: [selected])}
  end
end
