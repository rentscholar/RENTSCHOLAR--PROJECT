class Landlord < ActiveRecord::Base
 
  attr_accessible :email, :password_hash, :password_salt
 
  has_many :listings

end
