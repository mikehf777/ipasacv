class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.date :fecha
      t.float :monto
      t.integer :property_id

      t.timestamps
    end
  end
end
