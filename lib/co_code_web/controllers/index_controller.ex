defmodule CCWeb.IndexController do
  use CCWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    IO.puts("OK OK NEW")
    render(conn, "index.html")
  end
end
