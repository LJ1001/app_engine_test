defmodule AppEngineTest.Redis do
  use GenServer

  @name :redix

  def init(args) do
    {:ok, args}
  end

  def start_link(_opts) do
    config = Application.get_env(:app_engine_test, AppEngineTest.Redis)
    Redix.start_link(host: config[:host], port: config[:port], name: @name)
  end

  def command(command) do
    Redix.command(@name, command)
  end

  def transaction_pipeline(commands) do
    Redix.transaction_pipeline(@name, commands)
  end
end
