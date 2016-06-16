defmodule Finance.Mixfile do
  use Mix.Project

  def project do
    [app: :finance,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "A library to calculate Xirr through the bisection method using parallel processes.",
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
     deps: deps]
  end

  def application do
    [applications: [:logger, :tzdata]]
  end

  defp description do
    """
    A library to calculate Xirr through the bisection method using parallel processes.
    """
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "README*"],
      maintainers: ["Roberto Trevisan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/tubedude/finance-elixir"}
    ]
  end

  defp deps do
    # []
    [
      {:timex, "~> 1.0.0-rc2"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.10", only: :dev},
      {:excoveralls, "~> 0.4", only: :test},
      {:credo, "~> 0.1.0"}
    ]
  end
end
