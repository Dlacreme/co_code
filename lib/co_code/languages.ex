defmodule CC.Languages do
  use Ecto.Schema

  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "languages" do
    field :is_disabled, :boolean, default: false
    field :is_supported, :boolean, default: false
    field :label, :string
    field :picture_url, :string

    timestamps(updated_at: false)
  end
end
