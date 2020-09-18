defmodule Soaptest.Repo do
  use Ecto.Repo,
    otp_app: :soaptest,
    adapter: Ecto.Adapters.Postgres
end
