class Order < ActiveRecord::Base
  has_many :services

  belongs_to :user
  belongs_to :groom
  belongs_to :car
  belongs_to :prestataire
  belongs_to :order_status
  has_many :order_items
  #before_create :set_order_status
  before_save :update_subtotal

  #validates_presence_of :pick_up_place, :return_place, :start_date

   def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end



private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

end







