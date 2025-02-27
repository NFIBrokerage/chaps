defmodule Chaps.PathReader do
  @moduledoc """
  Provide methods for base path for displaying File paths of the modules.
  It uses Mix.project path as base folder.
  """

  @doc """
  Returns the Mix.Project base path.
  """
  def base_path do
    File.cwd!()
  end

  @doc """
  Expand path relative to the Mix.Project base path.
  """
  def expand_path(path) do
    Path.expand(path, base_path())
  end
end
