defmodule CC.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CC.Repo,
      # Start the Telemetry supervisor
      CCWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CC.PubSub},
      # Start the Endpoint (http/https)
      CCWeb.Endpoint,
      # Start our storage supervisor
      CC.Storage.Supervisor
    ]

    opts = [strategy: :one_for_one, name: CC.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CCWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
