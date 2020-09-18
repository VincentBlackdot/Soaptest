defmodule Otc.Repo.Migrations.OtcMigrationTables do
  use Ecto.Migration

  def up do
    create_tables()
  end

  def down do
    drop_tables()
  end
  def create_tables() do

    end

    create_if_not_exists table(:zra_aw_assessment_detail) do
      add :zra_aw_assessment_id, :integer
      add :product_code, :integer
      add :product_name, :string
      add :tax_code, :string
      add :tax_rate, :float
      add :tax_amount, :float
      add :status, :string
      timestamps(inserted_at: :created_at, type: :utc_datetime)
    end

    create_if_not_exists table(:zra_aw_assessment) do
      add :uuid, :integer
      add :reference_id, :string
      add :declarant_code, :string
      add :tpin, :string
      add :port, :string
      add :registration_year, :string
      add :registration_serial, :string
      add :registration_number, :string
      add :amount, :float
      add :has_interest, :integer
      add :interest_ampunt, :float
      add :status, :string
      add :principle_receipt_number, :string
      add :principle_receipt_serial, :string
      add :principle_receipt_date, :date
      add :interest_receipt_number, :string
      add :interest_receipt_serial, :string
      add :interest_receipt_date, :date
      add :customer_id, :integer
      add :sweep_status, :string
      add :processed_by, :integer
      timestamps(inserted_at: :created_at, type: :utc_datetime)
    end

  end

  def drop_tables() do
    drop_if_exists table(:zra_aw_assessment_detail)
    drop_if_exists table(:zra_aw_assessment)
  end

end
