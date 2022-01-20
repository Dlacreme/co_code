defmodule CC.Explorer.Item do
  @moduledoc """
  Describe a file
  """
  defstruct pathname: nil,
            filename: nil,
            type: nil,
            language_id: nil,
            updated_at: DateTime.utc_now(),
            peers_number: 0,
            children: []
end
