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
    @product = Product.new
    @product.save
  end

  def edit
    
  end

  def update
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
