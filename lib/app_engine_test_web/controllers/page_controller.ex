defmodule AppEngineTestWeb.PageController do
  use AppEngineTestWeb, :controller
  alias AppEngineTest.Redis

  def index(conn, _params) do
    {:ok, page_hits} = Redis.command(["INCR", "page_hits"])
    count = AppEngineTest.Repo.aggregate(AppEngineTest.User, :count, :id)

    conn
    |> assign(:count, count)
    |> assign(:page_hits, page_hits)
    |> render("index.html")
  end
end
