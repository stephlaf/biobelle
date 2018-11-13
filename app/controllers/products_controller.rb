class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_product, only: [ :show, :edit, :update, :destroy ]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :short_desc, :price, :photo, :format, :usage, :ingredients)
  end
end
