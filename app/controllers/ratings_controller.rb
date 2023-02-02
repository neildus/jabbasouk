class RatingsController < ApplicationController

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.product_id = Booking.find(params[:booking_id]).product_id
     if @rating.save
      redirect_to "/thankyou"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:star, :product_id, :user_id)
  end
end
