class Groom < ActiveRecord::Base
  has_many :orders, dependent: :nullify
end
