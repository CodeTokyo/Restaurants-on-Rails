class OrdersController < ApplicationController
  def create
    if current_customer.customer_meals_in_cart.any?
      @my_order = Order.create(customer_id: current_customer.id)
      current_customer.customer_meals_in_cart.update(is_purchased: true, order_id: @my_order.id)
      flash[:success] = "Order is Placed!"
      client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) # Creates an instance of the Twilio Client to send texts/calls with
      from = '+13092450166' # Your Twilio number (this one is mine)
      if client.messages.create(
        from: from,
        to: current_customer.phone_number,
        body: "Order is placed.") # Creates the message
        flash[:success] = "Text sent!"
      else
        flash[:error] = "Something went wrong."
      end
      if client.messages.create(
        from: from,
        to: "3092971379",
        body: @my_order.id) # Creates the message
        flash[:success] = "Text sent!"
      else
        flash[:error] = "Something went wrong."
      end
    else
       flash[:error] = "Something went wrong"
    end

    redirect_to("/restaurants")
  
  end

  def index
    @orders = current_customer.orders
  end

  def show
    
  end

  def new_text
    # Renders the form to send a new text
  end

  def send_text
    body = params[:Body]
    order_id = body.split.first.to_i
    status = body.split.last.upcase
    @order = Order.find(order_id)
    client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) # Creates an instance of the Twilio Client to send 
    if status == "DONE"
      # SEND THE COMPLETE TEXT
      from = '+13092450166' # Your Twilio number (this one is mine)

      if client.messages.create(
        from: from,
        to: @order.customer.phone_number,
        body: "#{@order.id}: Your order is ready for pickup.") # Creates the message
        flash[:success] = "Text sent!"
      else
        flash[:error] = "Something went wrong."
      end
    elsif status = "STARTED"
      # SEND THE STARTED TEXT
      from = '+13092450166' # Your Twilio number (this one is mine)

      if client.messages.create(
        from: from,
        to: @order.customer.phone_number,
        body: "#{@order.id}: Your order has been  started.") # Creates the message
        flash[:success] = "Text sent!"
      else
        flash[:error] = "Something went wrong."
      end
    end

    
  end

end
