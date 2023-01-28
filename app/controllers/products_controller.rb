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
    @product.user = current_user
    if @product.save
      redirect_to @product, notice: "Product was succefully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @product.destroy
    redirect_to product_path, status: :see_other
  end

  private

  def set_product
    def set_product
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Product not found"
      redirect_to products_path
    end
      end

  def product_params
    params.require(:product).permit(:title, :price, :description, :photo)
  end

end
