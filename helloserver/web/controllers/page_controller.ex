defmodule Hello.PageController do
  use Hello.Web, :controller

  def index(conn, _params) do
    :timer.sleep(10_000)
    text conn, "Hello port " <> System.get_env("PORT") <> "\n"
  end
end
