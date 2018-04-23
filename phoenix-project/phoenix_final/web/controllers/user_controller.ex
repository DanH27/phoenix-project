defmodule PhoenixFinal.UserController do
  use PhoenixFinal.Web, :controller
  def index(conn, _params) do
    users = Repo.all(PhoenixFinal.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(PhoenixFinal.User, id)
    render conn, "show.html", user: user
  end
end
