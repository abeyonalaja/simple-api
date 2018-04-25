defmodule SimpleApiWeb.Router do
  use SimpleApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SimpleApiWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
