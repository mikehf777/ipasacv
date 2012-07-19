class CreateRentDocuments < ActiveRecord::Migration
  def change
    create_table :rent_documents do |t|
      t.integer :rent_id
      t.integer :document_id
      t.string :url

      t.timestamps
    end
  end
end
