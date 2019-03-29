# Since configuration is shared in umbrella projects, this file
# should only configure the :songbird_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :songbird_web,
  ecto_repos: [Songbird.Repo],
  generators: [context_app: :songbird]

# Configures the endpoint
config :songbird_web, SongbirdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+tGrGfJ+YzZfPT4oFU9/6AzMPbx+V7vo8YCv/qzPI3Theqgphrz87hag27F7Rmeu",
  render_errors: [view: SongbirdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SongbirdWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Z5DV6IOPZFLHKpnlOE1qcgNy0ypmSZH2sPzjG/+L0dmCaSj+fGZiEFVpWMVtntnq"]

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
