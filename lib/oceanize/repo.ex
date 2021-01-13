defmodule Oceanize.Repo do
  use Ecto.Repo,
    otp_app: :oceanize,
    adapter: Ecto.Adapters.Postgres
end
