class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :music_record_id)
  end
end
