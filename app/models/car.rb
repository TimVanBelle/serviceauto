class Car < ActiveRecord::Base
  has_many :orders

  belongs_to :user

  validates_presence_of :registration_plate, :car_maker, :color


end
