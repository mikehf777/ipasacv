class CreateSurcharges < ActiveRecord::Migration
  def change
    create_table :surcharges do |t|
      t.string :folio
      t.float :monto
      t.integer :invoice_id

      t.timestamps
    end
  end
end
