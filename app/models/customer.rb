class Customer < Profil
  has_many :cars, through: :user
  has_many :orders

  validates_presence_of :first_name, :last_name, :mail, :phone_number
end
