defmodule CC.Repo.Migrations.AddLanguages do
  use Ecto.Migration
  alias CC.Repo
  alias CC.Languages

  def change do
    %Languages{
      id: "elixir",
      label: "Elixir",
      picture_url: "",
      is_supported: true,
      is_disabled: false
    }
    |> Repo.insert!()

    %Languages{
      id: "javascript",
      label: "JavaScript",
      picture_url: "",
      is_supported: true,
      is_disabled: false
    }
    |> Repo.insert!()

    %Languages{
      id: "typescript",
      label: "Typescript",
      picture_url: "",
      is_supported: true,
      is_disabled: false
    }
    |> Repo.insert!()

    %Languages{
      id: "python",
      label: "Python",
      picture_url: "",
      is_supported: true,
      is_disabled: false
    }
    |> Repo.insert!()

    %Languages{
      id: "ruby",
      label: "Ruby",
      picture_url: "",
      is_supported: true,
      is_disabled: false
    }
    |> Repo.insert!()
  end
end
