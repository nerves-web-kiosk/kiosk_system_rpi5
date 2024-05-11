defmodule Example.MixProject do
  use Mix.Project

  @app :example
  @version "0.1.0"
  @all_targets [:rpi5]

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.11",
      archives: [nerves_bootstrap: "~> 1.11"],
      start_permanent: Mix.env() == :prod,
      build_embedded: true,
      deps: deps(),
      releases: [{@app, release()}],
      preferred_cli_target: [run: :host, test: :host]
    ]
  end

  def application do
    [
      mod: {Example.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp deps do
    [
      # Dependencies for all targets
      {:nerves, "~> 1.7.16 or ~> 1.8", runtime: false},
      {:shoehorn, "~> 0.9"},
      {:ring_logger, "~> 0.8"},
      {:toolshed, "~> 0.2"},
      {:plug_cowboy, "~> 2.0"},
      {:nerves_weston, github: "coop/nerves_weston"},
      {:nerves_cog, github: "coop/nerves_cog"},

      # Dependencies for all targets except :host
      {:nerves_runtime, "~> 0.13", targets: @all_targets},
      {:nerves_pack, "~> 0.7", targets: @all_targets},

      # Dependencies for specific targets
      {:kiosk_system_rpi5, path: "..", runtime: false, targets: :rpi5}
    ]
  end

  def release do
    [
      overwrite: true,
      cookie: "#{@app}_cookie",
      include_erts: &Nerves.Release.erts/0,
      steps: [&Nerves.Release.init/1, :assemble],
      strip_beams: Mix.env() == :prod or [keep: ["Docs"]]
    ]
  end
end
