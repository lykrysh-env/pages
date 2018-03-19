defmodule PagesWeb.FilmController do
  use PagesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
