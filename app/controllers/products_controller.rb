class ProductsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_product, only: [:show]
  before_action :set_user_product, only: %i[edit update destroy]
  def index
    @products = Product.all
    @ratings = Rating.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to @product, notice: "Product was succefully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rating = Rating.new
  end

  def average_rating
    ratings.average(:star)
  end

  def destroy
    @product.destroy
    redirect_to product_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Product not found"
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:title, :price, :description, :photo)
  end
end
