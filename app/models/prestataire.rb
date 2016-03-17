class Prestataire < ActiveRecord::Base
  has_many :prestataire_services
  has_many :services, through: :prestataire_services, dependent: :nullify

end
