# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :weft,
  ecto_repos: [Weft.Repo]

# Configures the endpoint
config :weft, WeftWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7Xgi0nDa9UWE/3QB5AMfbcXFLDhH5k9ahLW7/QWeX82WdcDnye7SBUSjfi0X/v6q",
  render_errors: [view: WeftWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Weft.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
