class DistributeursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_distributeur, only: [ :show, :edit, :update, :destroy ]
  
  def index
    @distributeurs = policy_scope(Distributeur)
  end

  def show
    authorize @distributeur
  end

  def new
    @distributeur = Distributeur.new
    authorize_signed_in
  end

  def create
    @distributeur = Distributeur.new(distributeur_params)
    authorize_signed_in
    
    if @distributeur.save
      redirect_to distributeur_path(@distributeur)
    else
      render :new
    end
  end

  def edit
    authorize_signed_in
  end

  def update
    authorize_signed_in
    @distributeur.update(distributeur_params)
    redirect_to distributeur_path(@distributeur)
  end

  def destroy
    authorize_signed_in
    @distributeur.destroy
    redirect_to root_path
  end

  private

  def set_distributeur
    @distributeur = Distributeur.find(params[:id])
  end

  def distributeur_params
    params.require(:distributeur).permit(:name, :address, :product_list, :website, :facebook, :instagram, :photo)
  end

  def authorize_signed_in
    authorize @distributeur if user_signed_in?
  end
end
