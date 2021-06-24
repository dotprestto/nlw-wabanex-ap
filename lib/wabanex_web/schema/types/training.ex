defmodule WabanexWeb.Schema.Types.Training do
  use Absinthe.Schema.Notation

  import_types WabanexWeb.Schema.Types.Exercise

  @desc "Logic training representation"

  object :training do
    field :id, non_null(:uuid4)
    field :start_date, non_null(:date)
    field :end_date, non_null(:date)
    field :exercises, list_of(Exercise)
  end

  input_object :create_training_input do
    field :start_date, non_null(:date), description: "Training's start_date"
    field :end_date, non_null(:date), description: "Training's end_date"
    field :exercises, list_of(:exercise_input), description: "Training's exercises"
  end
end
