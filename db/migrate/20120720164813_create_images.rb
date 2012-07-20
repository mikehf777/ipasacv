class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_content_type
      t.string :image_file_name
      t.integer :image_file_size
      t.string :image_description
      t.integer :video_id

      t.timestamps
    end
  end
end
