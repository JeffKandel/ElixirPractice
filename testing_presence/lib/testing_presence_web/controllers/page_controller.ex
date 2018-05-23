defmodule TestingPresenceWeb.PageController do
  use TestingPresenceWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
