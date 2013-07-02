class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.decimal :price
      t.integer :rooms
      
      t.integer :landlord_id
      
      t.timestamps
    end
  end
end
