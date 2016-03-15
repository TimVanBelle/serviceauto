class Prestataire < Profil
  has_many :orders
  has_many :services

  validates_presence_of :last_name, :mail, :phone_number, :address, :rib, :picture
end
