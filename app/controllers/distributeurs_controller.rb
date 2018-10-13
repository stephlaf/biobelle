class DistributeursController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_distributeur, only: [ :show, :edit, :update, :destroy ]
  def index
    @distributeurs = Distributeur.all
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_distributeur
    @distributeur = Distributeur.find(params[:id])
  end

  def distributeur_params
    params.require(:distributeur).permit(:name, :address, :product_list, :website)
  end
end
