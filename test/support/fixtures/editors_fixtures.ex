defmodule CC.EditorFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CC.Editor` context.
  """

  @doc """
  Generate a session.
  """
  def session_fixture(attrs \\ %{}) do
    {:ok, session} =
      attrs
      |> Enum.into(%{})
      |> CC.Editor.create_session()

    session
  end
end
