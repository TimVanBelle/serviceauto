class Admin < Profil
  validates_presence_of :first_name, :last_name, :mail, :phone_number
end
