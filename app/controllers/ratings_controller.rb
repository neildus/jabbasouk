class RatingsController < ApplicationController

  def create
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    if @rating.save
      redirect_to product_path(@rating.product), notice: "Rating successfully added."
    else
      redirect_to product_path(@rating.product), alert: "Unable to add rating."
    end
  end
  
  private
  
  def rating_params
    params.require(:rating).permit(:star, :product_id, :user_id)
  end
end

