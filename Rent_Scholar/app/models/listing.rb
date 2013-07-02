class Listing < ActiveRecord::Base
  
  attr_accessible :address, :confirmed, :description, :price, :title, :rooms, :landlord_id
  
  validates :title, :address, :price, :rooms, :presence => true
  
  belongs_to :landlord
 
end
