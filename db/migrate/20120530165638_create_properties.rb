class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :locality_id
      t.integer :user_id
      t.string :name
      t.string :owner
      t.text :address
      t.string :google_maps
      t.text :description
      t.string :catastral_reference
      t.timestamps
    end
  end
end
