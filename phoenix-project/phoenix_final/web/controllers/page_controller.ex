defmodule PhoenixFinal.PageController do
  use PhoenixFinal.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
