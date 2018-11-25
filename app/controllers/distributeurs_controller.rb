class DistributeursController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_distributeur, only: [ :show, :edit, :update, :destroy ]
  def index
    @distributeurs = Distributeur.all
  end

  def show

  end

  def new
    @distributeur = Distributeur.new
  end

  def create
    @distributeur = Distributeur.new(distributeur_params)
    
    if @distributeur.save
      redirect_to distributeur_path(@distributeur)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    @distributeur.update(distributeur_params)
    redirect_to distributeur_path(@distributeur)
  end

  def destroy
    @distributeur.destroy
    redirect_to root_path
  end

  private

  def set_distributeur
    @distributeur = Distributeur.find(params[:id])
  end

  def distributeur_params
    params.require(:distributeur).permit(:name, :address, :product_list, :website, :photo)
  end
end
