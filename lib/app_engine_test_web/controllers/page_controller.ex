defmodule AppEngineTestWeb.PageController do
  use AppEngineTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
