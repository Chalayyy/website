class TypesController < ApplicationController
	skip_before_action :verify_authenticity_token

  def index 
    @types = Type.all 
  end

  def show
    @type = Type.find_by(name: params[:name])
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save 
        redirect_to types_path
      else 
        render :new, status: :unprocessable_entity 
      end 
  end

  def edit
    @type = Type.find_by(name: params[:name])
  end

  def update
    @type = Type.find_by(name: params[:name])
    if @type.update(type_params)
        redirect_to types_path 
    else 
      render :edit, status: :unprocessable_entity 
    end 
  end

  def destroy
    @type = Type.find_by(name: params[:name])
    @type.destroy
    redirect_to types_path, status: :see_other
  end

  private
  def type_params
    params.require(:type).permit(:name)
  end
end
