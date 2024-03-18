import Config

config :my_super_app, MySuperApp.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "my_super_app_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :my_super_app, MySuperAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "g4zOU9QYvxnM2VgkTzVwW6hjWgZFKhQH4bcv7+sLndPVpq+G0FcPNNfvwWuhhAOH",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:my_super_app, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:my_super_app, ~w(--watch)]}
  ]

# Watch static and templates for browser reloading.
config :my_super_app, MySuperAppWeb.Endpoint,
  reloadable_compilers: [:gettext, :elixir, :app, :surface],
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/my_super_app_web/(controllers|live|components)/.*(ex|heex|sface|js)$"
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

# Include HEEx debug annotations as HTML comments in rendered markup
config :phoenix_live_view, :debug_heex_annotations, true

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false
