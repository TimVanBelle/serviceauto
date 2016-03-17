class Service < ActiveRecord::Base
  belongs_to :order
  has_many :prestataire_services
  has_many :prestataires, through: :prestataire_services, dependent: :nullify


  validates_presence_of :price, :content, :title
  has_many :order_items, dependent: :destroy

  #default_scope { where(active: true) }
end
