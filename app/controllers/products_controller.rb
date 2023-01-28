class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :new , :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product.destroy
    redirect_to product_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:title, :price, :description)
  end
end
