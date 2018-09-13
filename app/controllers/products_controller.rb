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
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end
end
