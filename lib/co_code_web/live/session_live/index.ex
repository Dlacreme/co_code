defmodule CCWeb.SessionLive.Index do
  use CCWeb, :live_view

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    try do
      IO.puts("SESSION> #{inspect(CC.Storage.get(id))}")
      {:ok, assign(socket, session: CC.Storage.get(id))}
    rescue
      _e ->
        {:ok,
         socket
         |> put_flash(:error, "Session not found")
         |> Phoenix.LiveView.redirect(to: "/")}
    end
  end
end
