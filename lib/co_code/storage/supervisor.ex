defmodule CC.Storage.Supervisor do
  @moduledoc """
  All store items are saved into this supervisor
  """
  use DynamicSupervisor

  def start_link(opts) do
    DynamicSupervisor.start_link(__MODULE__, opts, name: __MODULE__)
  end

  def start_child(spec) do
    DynamicSupervisor.start_child(__MODULE__, spec)
  end

  @impl true
  def init(_params) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end
end
