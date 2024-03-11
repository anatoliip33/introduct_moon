defmodule MySuperAppWeb.HelloController do
  use MySuperAppWeb, :controller

  def hello(conn, params) do
    params |> IO.inspect()

    render(conn, :hello)
  end
end
