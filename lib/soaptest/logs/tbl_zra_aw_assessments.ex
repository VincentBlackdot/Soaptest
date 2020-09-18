defmodule Soaptest.Database.Tables.Zra_aw_assessment do

  use Endon
  use Ecto.Schema

  schema "zra_aw_assessment" do
    field :uuid, :integer
    field :reference_id, :string
    field :declarant_code, :string
    field :tpin, :string
    field :port, :string
    field :registration_year, :string
    field :registration_serial, :string
    field :registration_number, :string
    field :amount, :float
    field :has_interest, :integer
    field :interest_ampunt, :float
    field :status, :string
    field :principle_receipt_number, :string
    field :principle_receipt_serial, :string
    field :principle_receipt_date, :date
    field :interest_receipt_number, :string
    field :interest_receipt_serial, :string
    field :interest_receipt_date, :date
    field :customer_id, :integer
    field :sweep_status, :string
    field :processed_by, :integer
    timestamps(inserted_at: :created_at, type: :utc_datetime)
  end
end
