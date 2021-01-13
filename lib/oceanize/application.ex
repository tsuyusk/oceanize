defmodule Oceanize.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Oceanize.Repo,
      # Start the Telemetry supervisor
      OceanizeWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Oceanize.PubSub},
      # Start the Endpoint (http/https)
      OceanizeWeb.Endpoint
      # Start a worker by calling: Oceanize.Worker.start_link(arg)
      # {Oceanize.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Oceanize.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    OceanizeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
