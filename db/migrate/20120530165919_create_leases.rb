class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :num_int
      t.boolean :status_renta
      t.float :precio
      t.text :descripcion
      t.integer :profile_id

      t.timestamps
    end
  end
end
