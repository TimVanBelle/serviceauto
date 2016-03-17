class Car < ActiveRecord::Base
  has_many :orders

  belongs_to :user

  validates_presence_of :car_maker, :color, :model


end
