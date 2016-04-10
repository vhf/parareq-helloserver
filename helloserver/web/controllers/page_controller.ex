defmodule Hello.PageController do
  use Hello.Web, :controller

  def index(conn, _params) do
    if System.get_env("SLEEP") do
      sleep = System.get_env("SLEEP") |> String.to_integer
      :timer.sleep(sleep)
    end
    text conn, "Hello port " <> System.get_env("PORT") <> "\n"
  end
end
