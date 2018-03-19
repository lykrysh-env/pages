defmodule PagesWeb.Router do
  use PagesWeb, :router

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

  scope "/", PagesWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/film", FilmController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PagesWeb do
  #   pipe_through :api
  # end
end
