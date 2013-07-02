class AddListingIdToLandlords < ActiveRecord::Migration
  def change
    add_column :landlords, :listing_id, :integer
  end
end
