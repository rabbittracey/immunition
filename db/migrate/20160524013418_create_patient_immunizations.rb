class CreatePatientImmunizations < ActiveRecord::Migration
  def change
    create_table :patient_immunizations do |t|
      t.string :title
      t.string :date_registered
      t.text :notes

      t.timestamps null: false
    end
  end
end
