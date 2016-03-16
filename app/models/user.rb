class User < ActiveRecord::Base
  has_many :profils
  has_many :reviews
  has_many :cars

  accepts_nested_attributes_for :profils

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
