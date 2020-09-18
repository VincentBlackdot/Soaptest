defmodule Soaptest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Soaptest.Repo,
      # Start the Telemetry supervisor
      SoaptestWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Soaptest.PubSub},
      # Start the Endpoint (http/https)
      SoaptestWeb.Endpoint
      # Start a worker by calling: Soaptest.Worker.start_link(arg)
      # {Soaptest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Soaptest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SoaptestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
