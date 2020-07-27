class VehiculesController < ApplicationController
before_action :set_vehicule, only: [:show, :edit, :update, :destroy]

  def index
    @vehicules = Vehicule.all
  end


  def new
    @vehicules = Vehicule.new
  end


  def create
    @vehicule = Vehicule.new(client_params)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicule_path(@vehicule)
    else
      render :new
    end
  end


  def show
  end

  def edit
  end

  def update
    if @vehicule.update(vehicule_params)
      redirect_to @vehicule
    else
      render :edit
    end
  end

  def destroy
    @vehicule.destroy
    redirect_to vehicules_path
  end

  private

  def set_vehicule
    @vehicule = Vehicule.find(params[:id])
  end

  def vehicule_params
    params.require(:vehicule).permit(:marque, :modele, :immatriculation, :annee, :date_achat, :km_achat)
  end
end
