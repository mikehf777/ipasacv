class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nombre
      t.integer :property_id
      t.timestamps
    end
  end
end
