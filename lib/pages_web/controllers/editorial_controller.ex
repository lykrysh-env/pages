defmodule PagesWeb.EditorialController do
  use PagesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"title" => title}) do
    render conn, "show.html", title: title
  end
end
