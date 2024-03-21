class PokemonController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index 
    @pokemon = Pokemon.all 
  end

  def show
    @pokemon = Pokemon.find_by(name: params[:name])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(poke_params)
    if @pokemon.save 
      redirect_to pokemon_index_path
    else 
      render :new, status: :unprocessable_entity 
    end 
  end

  def edit
    @pokemon = Pokemon.find_by(name: params[:name])
  end

  def update
    @pokemon = Pokemon.find_by(name: params[:name])
    if @pokemon.update(poke_params)
      redirect_to pokemon_index_path 
    else 
      render :edit, status: :unprocessable_entity 
    end 
  end

  def destroy
    @pokemon = Pokemon.find_by(name: params[:name])
    @pokemon.destroy
    redirect_to pokemon_index_path, status: :see_other
  end

  private
  def poke_params
    params.require(:pokemon).permit(:name, :type_ids)
  end
end
