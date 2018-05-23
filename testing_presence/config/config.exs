# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testing_presence,
  ecto_repos: [TestingPresence.Repo]

# Configures the endpoint
config :testing_presence, TestingPresenceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HWPPXcvEPogz+ZGthLPpHHbRPTO6s4ihF3aV2LhVELbmrAJlJZ0XRR8pD8eC5pSM",
  render_errors: [view: TestingPresenceWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestingPresence.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
