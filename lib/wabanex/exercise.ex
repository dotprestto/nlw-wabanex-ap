defmodule Wabanex.Exercise do
  use Ecto.Schema
  import Ecto.Changeset
  alias Wabanex.Training

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @fields [:repetitions, :protocol_description, :name, :youtube_video_url]

  schema "exercises" do
    field :name, :string
    field :protocol_description, :string
    field :repetitions, :string
    field :youtube_video_url, :string

    belongs_to :training, Training

    timestamps()
  end

  def changeset(exercise, params) do
    # Por causa do cast_assoc() no Training
    exercise
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
