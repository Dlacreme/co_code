defmodule CCWeb.SessionLive.Index do
  use CCWeb, :live_view

  alias CC.Editor
  alias CC.Editor.Sessions

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    {:ok, assign(socket, session: init_session(id))}
  end

  defp init_session(id),
    do: %{
      id: id,
      started_at: DateTime.utc_now()
    }
end
