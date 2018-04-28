# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tree_hierarchy,
  ecto_repos: [TreeHierarchy.Repo]

# Configures the endpoint
config :tree_hierarchy, TreeHierarchyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g3NiN5OKdOTowDDZD7BrIr51UzfSbS6hwpSi/+dmmbWBBYr4QRmQ+kR9w7468JMc",
  render_errors: [view: TreeHierarchyWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TreeHierarchy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
