defmodule HelloPhoenix.Router do
  use HelloPhoenix.Web, :router

  pipeline :browser do
    plug :accepts, ["html", "text"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloPhoenix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
#    get "/test", PageController, :test
#    get "/hello",HelloController, :index
#    get "/hello/:messenger", HelloController, :show
    resources "/users", UserController

  end
 # New route for redirects
#  scope "/", HelloPhoenix do
#    get "/redirect_test", PageController, :redirect_test, as: :redirect_test
#  end
  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenix do
  #   pipe_through :api
  # end
end
