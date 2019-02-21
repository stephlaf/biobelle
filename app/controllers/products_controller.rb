class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_product, only: [ :show, :edit, :update, :destroy ]
  
  def index
    # @products = policy_scope(Product)

    if params[:query].present?
      @products =  policy_scope(Product).search_by_all_fields(params[:query])
      # raise
      # binding.pry
      # @products = Product.search_by_all_fields(params[:query])
    else
      @products =  policy_scope(Product)
    end
  end

  def show
    authorize @product
  end

  def new
    @product = Product.new
    authorize_signed_in
  end

  def create
    @product = Product.new(product_params)
    authorize_signed_in
    
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    authorize_signed_in
  end

  def update
    authorize_signed_in
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    authorize_signed_in
    @product.destroy
    redirect_to root_path
  end

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :short_desc, :price, :photo, :format, :usage, :ingredients, :slug)
  end

  def authorize_signed_in
    authorize @product if user_signed_in?
  end
end
