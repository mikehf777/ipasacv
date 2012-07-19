class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture_file_name
      t.string :picture_content_type
      t.integer :picture_file_size
      t.datetime :picture_upload_date
      t.string :picture_descripcion
      t.integer :property_id
      t.timestamps
    end
  end
end
