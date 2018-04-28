defmodule TreeHierarchyWeb.Router do
  use TreeHierarchyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TreeHierarchyWeb do
    pipe_through :api
  end
end
