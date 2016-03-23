class User < ActiveRecord::Base
  has_many :profils, dependent: :destroy
  has_many :reviews, dependent: :nullify
  has_many :cars, dependent: :destroy

  accepts_nested_attributes_for :profils

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # mount_uploader :picture, PhotoUploader

  def orders
    orders = []
    self.cars.each do |car|
      car.orders.each do |order|
        orders << order
      end
    end
    orders
  end
end
