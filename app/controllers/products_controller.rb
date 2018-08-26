class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
  end

  def edit
    # @product = Product.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
