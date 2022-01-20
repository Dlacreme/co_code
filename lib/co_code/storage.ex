defmodule CC.Storage do
  @moduledoc """
  All session data are stored in a process.

  This module provide helpers to deal with those data
  """
  alias CC.Storage.Store

  @doc """
  Instanciate a new storage for a session
  """
  def create(session_id) do
    store =
      %Store{
        id: session_id,
        explorer: CC.Explorer.get_root(),
        peers_number: 1,
        started_at: DateTime.utc_now()
      }
      |> tap(&CC.Storage.Supervisor.start_child({CC.Storage.Agent, &1}))

    {:ok, store}
  end

  @doc """
  Returns a session's storage
  """
  def get(session_id) do
    Agent.get(CC.Storage.Agent.get_process_name(session_id), & &1)
  end
end
