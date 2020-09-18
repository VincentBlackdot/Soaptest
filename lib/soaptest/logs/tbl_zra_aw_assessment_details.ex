defmodule Otc.Database.Tables.Zra_aw_assessment_details do

  use Endon
  use Ecto.Schema

  schema "zra_aw_assessment_detail" do
    field :zra_aw_assessment_id, :integer
    field :product_code, :integer
    field :product_name, :string
    field :tax_code, :string
    field :tax_rate, :float
    field :tax_amount, :float
    field :status, :string
    timestamps(inserted_at: :created_at, type: :utc_datetime)
  end
end


