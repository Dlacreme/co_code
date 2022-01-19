defmodule CC.Editor.Sessions do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "sessions" do
    timestamps(updated_at: false)
  end

  @doc false
  def changeset(session, attrs) do
    session
    |> cast(attrs, [])
    |> validate_required([])
  end
end
