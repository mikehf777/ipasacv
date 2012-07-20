class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.text :descripcion
      t.timestamps
    end
  end
end
