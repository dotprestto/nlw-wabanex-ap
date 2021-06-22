defmodule Wabanex.User do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:email, :password, :name] # variável de módule - constante de módulo

  schema "users" do
      field :email, :string
      field :name, :string
      field :password, :string

      timestamps()
  end

  def changeset(params) do
    %__MODULE__{} # __MODULE__ = Wabanex.User
    |> cast(params, @fields)
  end
end
