defmodule PagesWeb.EditorialController do
  use PagesWeb, :controller

  def show(conn, %{"title" => title}) do
    render conn, "show.html", title: title
  end
end
