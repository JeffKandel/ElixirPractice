defmodule NestedFoldersWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use NestedFoldersWeb, :controller
      use NestedFoldersWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: NestedFoldersWeb
      import Plug.Conn
      import NestedFoldersWeb.Router.Helpers
      import NestedFoldersWeb.Gettext
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/nested_folders_web/templates",
                        namespace: NestedFoldersWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import NestedFoldersWeb.Router.Helpers
      import NestedFoldersWeb.ErrorHelpers
      import NestedFoldersWeb.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import NestedFoldersWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
