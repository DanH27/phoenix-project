defmodule PhoenixFinal.Router do
  use PhoenixFinal.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end





  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug PhoenixFinal.Auth, repo: PhoenixFinal.Repo
  end
  scope "/", PhoenixFinal do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
    resources "/posts", PostController

  end
  # Other scopes may use custom stacks.
  # scope "/api", PhoenixFinal do
  #   pipe_through :api
  # end
end
