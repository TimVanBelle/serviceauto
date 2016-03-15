class Groom < Profil
  has_many :orders

  validates_presence_of :first_name, :last_name, :mail, :phone_number, :address, :rib, :driving_licence, :picture
end
