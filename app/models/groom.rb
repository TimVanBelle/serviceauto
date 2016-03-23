class Groom < ActiveRecord::Base
  has_many :orders, dependent: :nullify

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
