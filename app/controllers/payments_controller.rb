class PaymentsController < ApplicationController
  before_action :set_order

  def new
    check_order_step 'confirmed'
  end

  def create
    check_order_step 'confirmed'
    @amount = current_order.total

  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email: params[:stripeEmail]
  )
  # You should store this customer id and re-use it.

  charge = Stripe::Charge.create(
    customer: customer.id,
    amount:       (@amount * 100).to_i,  # in cents
    description:  "Payment for réservation #{current_order.id} for order #{@order.id}",
    currency:     'eur'
  )

  @order.pay
  @order.save!
  authorize @order
  redirect_to account_path(anchor: "reservations")

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_order_payment_path(@order)
  end

private

  def set_order
    @order = current_order
    authorize @order
  end
end
