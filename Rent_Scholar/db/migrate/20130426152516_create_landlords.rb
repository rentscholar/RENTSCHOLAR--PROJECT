class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
     
      t.string :email
      
      t.boolean :confirmed
      
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
