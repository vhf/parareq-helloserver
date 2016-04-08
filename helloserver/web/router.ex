defmodule Hello.Router do
  use Hello.Web, :router

  scope "/", Hello do
    get "/", PageController, :index
  end
end
