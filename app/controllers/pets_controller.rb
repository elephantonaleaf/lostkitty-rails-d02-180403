class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end


  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end


  def create
      @pet = Pet.new(pet_params)
      pet.save
      redirect_to pets_path
  end


  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet.id)
  end


  private

  def pet_params
    params.require(:pet).permit(:name, :address, :category, :description, :found)
  end


end