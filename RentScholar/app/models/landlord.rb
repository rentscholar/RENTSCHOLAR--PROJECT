class Landlord < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  # attr_accessible :title, :body  
  has_many :listings
  validates :listing, :presence => true
  devise :database_authenticatable, :registerable, :token_authenticatable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable      
  attr_accessible :email, :password, :password_confirmation, :remember_me, :listings_attributes
  
  # Include default devise modules. Others available are:
  # 
  # and :omniauthable
  
  def password_required?
    super if confirmed?
  end

  def password_match?
    self.errors[:password] << "can't be blank" if password.blank?
    self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    self.errors[:password_confirmation] << "does not match password" if password != password_confirmation
    password == password_confirmation && !password.blank?
  end
  
  def new
    @landlord = Landlord.new
    @landlord.listings.build
  end
  
end

