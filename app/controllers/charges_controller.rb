class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Amount in cents
    @amount = 500
    
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    redirect_to new_event_participation_path(params[:event_id])
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
