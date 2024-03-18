import Config

config :my_super_app,
  ecto_repos: [MySuperApp.Repo],
  generators: [timestamp_type: :utc_datetime]

# Configures the endpoint
config :my_super_app, MySuperAppWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: MySuperAppWeb.ErrorHTML, json: MySuperAppWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: MySuperApp.PubSub,
  live_view: [signing_salt: "gCbgwgWE"]

import_config "../deps/moon/config/surface.exs"

config :surface, :components, [
  {Moon.Design.Tooltip.Content, propagate_context_to_slots: true}
]

config :esbuild,
  version: "0.16.4",
  my_super_app: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
]

config :tailwind,
  version: "3.4.0",
  my_super_app: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
