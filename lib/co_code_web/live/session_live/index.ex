defmodule CCWeb.SessionLive.Index do
  use CCWeb, :live_view

  alias CC.Editor
  alias CC.Editor.Sessions

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    {:ok, assign(socket, session: init_session(id))}
  end

  @impl true
  def handle_event(
        "explorer_new",
        %{
          "type" => type,
          "parent" => parent_pathname,
          "filename" => filename
        },
        socket
      ) do
    IO.puts("ADD #{filename} TYPE #{type} TO #{parent_pathname}")
    {:noreply, socket}
  end

  defp init_session(id),
    do: %{
      id: id,
      started_at: DateTime.utc_now()
    }
end
