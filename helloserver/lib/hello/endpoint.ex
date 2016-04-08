defmodule Hello.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Hello.Router
end
