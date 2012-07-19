class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :folio
      t.float :monto
      t.date :fecha_vencimiento
      t.integer :rent_id

      t.timestamps
    end
  end
end
