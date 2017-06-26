# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :unf_swuber,
  ecto_repos: [UnfSwuber.Repo]

# Configures the endpoint
config :unf_swuber, UnfSwuber.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9SbizyjDVcuiFzQSjHLCCpMWvqTe97pVuxDN/QmssGYRVVh7p2UmSKoG3HpygHI9",
  render_errors: [view: UnfSwuber.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UnfSwuber.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "UnfSwuber.#{Mix.env}",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: UnfSwuber.GuardianSerializer,
  secret_key: to_string(Mix.env) <> "SuPerseCret_aBraCadabrA"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
