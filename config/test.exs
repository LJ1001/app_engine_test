use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :app_engine_test, AppEngineTestWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :app_engine_test, AppEngineTest.Repo,
  username: "postgres",
  password: "postgres",
  database: "app_engine_test_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
