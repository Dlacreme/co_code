defmodule CC.Storage.Store do
  @moduledoc """
  The root of our storage. Contains the session details as well as the first entry to our folder explorer
  """
  defstruct [:id, :explorer, :peers_number, :started_at]
end
