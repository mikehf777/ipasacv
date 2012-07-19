class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :recamaras
      t.integer :banos
      t.boolean :sala
      t.boolean :cocina
      t.boolean :cuarto
      t.integer :type_id
      t.integer :property_id
      t.timestamps
    end
  end
end
