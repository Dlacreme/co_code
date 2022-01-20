defmodule CC.Storage.Agent do
  @moduledoc """
  Agent storing all data relative to a session
  """
  use Agent
  alias CC.Storage.Store

  def start_link(store = %Store{}) do
    Agent.start_link(fn -> store end, name: get_process_name(store.id))
  end

  defp get_process_name(id) do
    "#{__MODULE__}_#{id}"
  end
end
