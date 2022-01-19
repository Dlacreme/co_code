defmodule CC.Repo.Migrations.CreateLanguages do
  use Ecto.Migration

  def change do
    create table(:languages, primary_key: false) do
      add :id, :string, primary_key: true, size: 255
      add :label, :string, size: 255
      add :picture_url, :string, size: 1024
      add :is_supported, :boolean, default: false, null: false
      add :is_disabled, :boolean, default: false, null: false

      timestamps(updated_at: false)
    end
  end
end
