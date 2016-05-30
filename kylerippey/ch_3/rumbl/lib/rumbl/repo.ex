defmodule Rumbl.Repo do
  @moduledoc """
  In memory repo
  """

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "Jose", username: "josevalim", password: "elixir"},
      %Rumbl.User{id: "2", name: "Kyle", username: "kylerippey", password: "bob"},
      %Rumbl.User{id: "3", name: "Tiffany", username: "tafby88", password: "cat"},
    ]
  end

  def all(_module), do: []
  
  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
