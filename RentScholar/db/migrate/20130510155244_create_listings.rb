class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :landlord
      t.string :title 
      t.text :description 
      t.integer :rooms
      t.decimal :price 
      t.date :available 
      t.string :utilities 
      t.string :address 
      t.string :city 
      t.string :province 
      t.string :country 
      t.string :images   
      
      t.timestamps
    end
  end
end
