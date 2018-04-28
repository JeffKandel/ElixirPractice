# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nested_folders,
  ecto_repos: [NestedFolders.Repo]

# Configures the endpoint
config :nested_folders, NestedFoldersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I4eRuzX1L23fhC2KYeCtT9mk2w1LUxrDWxNXP1DOWgtLIua2WgL1kEHhR4fO0Z8l",
  render_errors: [view: NestedFoldersWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NestedFolders.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
