defmodule MySuperAppWeb.PageController do
  use MySuperAppWeb, :controller

  def home(conn, %{"message" => message}) do
    conn
    |> render(
      :home,
      %{
        layout: false,
        message: message
      }
    )
  end
end
