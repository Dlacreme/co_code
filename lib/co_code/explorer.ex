defmodule CC.Explorer do
  @moduledoc """
  Define a tree of file
  """

  alias CC.Explorer.Item

  @doc """
  The root node of any explorer tree
  """
  @spec get_root :: %Item{}
  def get_root() do
    %Item{
      pathname: "/",
      filename: "/"
    }
  end
end
