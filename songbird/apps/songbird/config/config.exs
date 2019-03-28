# Since configuration is shared in umbrella projects, this file
# should only configure the :songbird application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :songbird,
  ecto_repos: [Songbird.Repo]

import_config "#{Mix.env()}.exs"
