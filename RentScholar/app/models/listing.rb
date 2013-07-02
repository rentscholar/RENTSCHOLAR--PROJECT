class Listing < ActiveRecord::Base
  belongs_to :landlord  
  attr_accessible :title, :description, :rooms, :price, :available, :utilities, :address, :city, :province, :country, :images
end
