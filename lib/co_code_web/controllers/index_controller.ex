defmodule CCWeb.IndexController do
  use CCWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
