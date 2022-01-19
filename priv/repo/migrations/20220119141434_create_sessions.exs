defmodule CC.Repo.Migrations.CreateSessions do
  use Ecto.Migration

  def change do
    create table(:sessions, primary_key: false) do
      add :id, :binary_id, primary_key: true

      timestamps(updated_at: false)
    end
  end
end
