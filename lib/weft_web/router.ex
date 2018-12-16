defmodule WeftWeb.Router do
  use WeftWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WeftWeb do
    pipe_through :api
  end
end
