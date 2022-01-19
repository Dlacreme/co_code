defmodule CC.Repo do
  use Ecto.Repo,
    otp_app: :co_code,
    adapter: Ecto.Adapters.Postgres
end
