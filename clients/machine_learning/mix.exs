defmodule GoogleApi.MachineLearning.V1.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project() do
    [
      app: :google_api_machine_learning,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/machine_learning"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 0.5"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    An API to enable creating and using machine learning models.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/machine_learning",
        "Homepage" => "https://cloud.google.com/ml-engine/"
      }
    ]
  end
end
