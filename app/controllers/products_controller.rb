class ProductsController < ApplicationController


  before_action :set_product, except: [:index, :new , :create]
  before_action :authenticate_user!, except: [:show]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to list_path(@product), notice: "Product saved"
      else
        render :new
      end
  end

  def show
    @product = Product.find(params[:id])
  end
    def destroy
      @product.destroy
      redirect_to list_path(@product.list)
    end
  private

  def product_params
    params.require(:product).permit(:title, :price, :description)
  end


end
