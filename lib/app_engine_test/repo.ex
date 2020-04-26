defmodule AppEngineTest.Repo do
  use Ecto.Repo,
    otp_app: :app_engine_test,
    adapter: Ecto.Adapters.Postgres
end
