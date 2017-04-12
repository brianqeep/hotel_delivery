class OrdersController < ApplicationController
    def new
      @hotel = Hotel.find(params[:hotel_id])
      @order = @hotel.orders.new
    end
    def create
      @hotel = Hotel.find(params[:hotel_id])
      @order = @hotel.orders.new(order_params)
      if @order.save
        redirect_to hotel_path(@order.hotel)
      else
        render :new
      end
    end

  private
    def order_params
      params.require(:order).permit(:name, :order, :location, :number)
    end
  end
