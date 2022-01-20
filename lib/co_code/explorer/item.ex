defmodule CC.Explorer.Item do
  @moduledoc """
  Describe a file
  """
  defstruct [:filename, :language_id, :updated_at, :peers_number]
end
