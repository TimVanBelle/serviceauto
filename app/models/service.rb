class Service < ActiveRecord::Base
  belongs_to :order
  belongs_to :prestataire

  validates_presence_of :price, :content, :title, :service_duration
end
