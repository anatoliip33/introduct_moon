defmodule MySuperApp.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MySuperAppWeb.Telemetry,
      MySuperApp.Repo,
      {DNSCluster, query: Application.get_env(:my_super_app, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MySuperApp.PubSub},
      MySuperAppWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: MySuperApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    MySuperAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
