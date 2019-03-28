defmodule Songbird.Repo do
  use Ecto.Repo,
    otp_app: :songbird,
    adapter: Ecto.Adapters.Postgres
end
