class Order < ActiveRecord::Base
  include AASM

  ItemAlreadyPresent = Class.new(StandardError)

  aasm :column => 'state' do
    state :cart, initial: true
    state :new_order
    state :confirmed
    state :paid

    event :make_order do
      transitions from: :cart, to: :new_order
    end

    event :confirm do
      transitions from: :new_order, to: :confirmed
    end

    event :pay do
      transitions from: :confirmed, to: :paid
    end
  end

  has_many :services, dependent: :nullify
  has_many :order_items, dependent: :destroy

  belongs_to :user
  belongs_to :groom
  belongs_to :car
  belongs_to :prestataire
  belongs_to :order_status

  #before_create :set_order_status
  before_save :update_subtotal


  validates :state, presence: true

  with_options unless: :cart? do |admin|
    validates :start_date, presence: true, blank: false
    validates :end_date, presence: true, blank: false
    validates :pick_up_place, presence: true, blank: false
    validates :return_place, presence: true, blank: false
    validates :car, presence: true
  end

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def total
    subtotal + 25
  end

  def items_count
    order_items.size
  end

  def add_item(service_id)
    fail ItemAlreadyPresent if order_items.where(service_id: service_id).count > 0

    service = Service.find(service_id)
    self.order_items.build(
      service: service,
      unit_price: service.price,
      quantity: 1
    )
    save!
  end

  def delete_item(item_id)
    self.order_items.find(item_id).delete
  end

private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

end
