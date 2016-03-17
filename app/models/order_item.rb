class OrderItem < ActiveRecord::Base
  belongs_to :service
  belongs_to :order


  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :service_present
  validate :order_present

  before_save :finalize

end

  def unit_price
    if persisted?
      self[:unit_price]
    else
      service.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def service_present
    if service.nil?
      errors.add(:service, "non valide ou non présent")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "non valide")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

