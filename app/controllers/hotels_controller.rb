class HotelsController < ApplicationController
  before_action :find_hotel, only: [:show, :upvote, :downvote]
  def index
    @search = Hotel.search do
      fulltext params[:search]
    end
    @hotels = @search.results
    render :index
  end

  def show
      @hotel = Hotel.find(params[:id])
      render :show
  end

  def new
    @hotel = current_user.hotels.build
    render :new
  end

  def create
    @hotel = current_user.hotels.build(hotel_params)
    if @hotel.save
      redirect_to  hotels_path
    else
      render :new
    end
  end
  def upvote
    @hotel.upvote_by current_user
    redirect_to :back
  end
  def downvote
    @hotel.downvote_by current_user
    redirect_to :back
  end
private
  def hotel_params
    params.require(:hotel).permit(:name, :location, :about)
  end
  def find_hotel
    @hotel = Hotel.find(params[:id])
  end
end
