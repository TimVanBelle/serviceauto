class Service < ActiveRecord::Base
  belongs_to :order
  has_and_belongs_to_many :prestataires

  validates_presence_of :price, :content, :title
  has_many :order_items

  #default_scope { where(active: true) }
end
