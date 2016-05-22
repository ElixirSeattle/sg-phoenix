defmodule Rumbl.Repo do
  # use Ecto.Repo, otp_app: :rumbl

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "José Valim", username: "josevalim", password: "elixir"},
      %Rumbl.User{id: "2", name: "Bruce Tate", username: "redrapids", password: "7langs"},
      %Rumbl.User{id: "3", name: "Chris McCord", username: "chrismccord", password: "phx"},
      %Rumbl.User{id: "3", name: "Daniel Azuma", username: "dazuma", password: "meow"},
    ]
  end
  def all(_module), do: []

  def get(module, id) do
    module
      |> all
      |> Enum.find(&(&1.id == id))
  end

  def get_by(module, params) do
    module
      |> all
      |> Enum.find(fn map ->
        Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
      end)
  end

end
