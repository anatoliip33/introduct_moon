defmodule MySuperAppWeb.Router do
  use MySuperAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {MySuperAppWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MySuperAppWeb do
    pipe_through :browser

    get "/home/:message", PageController, :home

    live("/", HomeLive)
    live("/menu", MenuPage)
    live("/tabs", Tabs)
    live("/form", Form)

    live("/users", UsersPage)

    # resources "/users", UserController
    #   resources "/posts", PostController
    # end
  end

  # scope "/api", HelloWeb.Api do
  #   pipe_through :api

  #   scope "/v1", V1 do
  #     resources "/images",  ImageController
  #     resources "/reviews", ReviewController
  #     resources "/users",   UserController
  #   end
  # end

  # Other scopes may use custom stacks.
  # scope "/api", MySuperAppWeb do
  #   pipe_through :api
  # end
end
