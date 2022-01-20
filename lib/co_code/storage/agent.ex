defmodule CC.Storage.Agent do
  @moduledoc """
  Agent storing all data relative to a session
  """
  use Agent
  alias CC.Storage.Store

  def start_link(store = %Store{}) do
    Agent.start_link(fn -> store end, name: get_process_name(store.id))
  end

  @doc """
  Generates a uniq atom per session
  !WARNING: find a better solution. This will deadlock at some point.
  	The BEAM only supports a limited number of atoms
  """
  def get_process_name(id) do
    "#{__MODULE__}-#{id}"
    |> String.replace("-", "")
    |> String.to_atom()
  end
end
