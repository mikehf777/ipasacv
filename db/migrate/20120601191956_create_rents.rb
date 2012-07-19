class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :leaseuser_id
      t.date :fecha_inicio
      t.date :fecha_fin
      t.float :descuento

      t.timestamps
    end
  end
end
