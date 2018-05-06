defmodule PhoenixFinal.UserView do
  use PhoenixFinal.Web, :view
  alias PhoenixFinal.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
