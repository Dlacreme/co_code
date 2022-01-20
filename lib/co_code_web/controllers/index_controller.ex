defmodule CCWeb.IndexController do
  use CCWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    {:ok, %CC.Editor.Sessions{id: id}} = CC.Editor.create_session()
    {:ok, _store} = CC.Storage.create(id)
    conn |> redirect(to: "/#{id}")
  end
end
