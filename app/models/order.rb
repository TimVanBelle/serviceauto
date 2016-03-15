class Order < ActiveRecord::Base
  has_many :services

  belongs_to :customer
  belongs_to :groom
  belongs_to :car
  belongs_to :prestataire

  validates_presence_of :pick_up_place, :return_place, :start_date

end
