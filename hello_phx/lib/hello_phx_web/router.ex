defmodule HelloPhxWeb.Router do
  use HelloPhxWeb, :router

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

  scope "/", HelloPhxWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", HelloPhxController, :index
    get "/hello/:messenger", HelloPhxController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhxWeb do
  #   pipe_through :api
  # end
end
