defmodule MySuperAppWeb.PageController do
  use MySuperAppWeb, :controller

  def home(conn, %{"message" => message} = params) do
    params |> IO.inspect()

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
