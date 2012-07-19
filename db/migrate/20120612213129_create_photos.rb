class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.string :photo_descripcion
      t.integer :profile_id

      t.timestamps
    end
  end
end
