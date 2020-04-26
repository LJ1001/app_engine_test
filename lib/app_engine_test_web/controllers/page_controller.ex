defmodule AppEngineTestWeb.PageController do
  use AppEngineTestWeb, :controller

  def index(conn, _params) do
    count = AppEngineTest.Repo.aggregate(AppEngineTest.User, :count, :id)

    conn
    |> assign(:count, count)
    |> render("index.html")
  end
end
