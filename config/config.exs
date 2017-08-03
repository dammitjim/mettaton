# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mettaton,
  ecto_repos: [Mettaton.Repo]

# Configures the endpoint
config :mettaton, MettatonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Qu/d0ANx9ac3p5ul4WZLmqZZ9VoWE1N+Eog4ZzSgOm9ZlmLA/sMmG23QBPJvvr+P",
  render_errors: [view: MettatonWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mettaton.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
