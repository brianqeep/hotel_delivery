class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
    render :index
  end

  def show
    @hotel = Hotel.find(params[:id])
    render :show
  end

  def new
    @hotel = Hotel.new
    render :new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to  hotels_path
    else
      render :new
    end
  end

private
  def hotel_params
    params.require(:hotel).permit(:name, :location, :about)
  end
end
