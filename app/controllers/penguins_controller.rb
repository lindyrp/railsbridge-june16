class PenguinsController < ApplicationController

  def index
    @penguins = Penguin.all
    @penguin = Penguin.new
  end

  def show
    @penguin.find(params[:id])
  end

  def create
    @penguins = Penguin.all
    @penguin = Penguin.new(penguin_params)
    if @penguin.save
      redirect_to penguins_path
    else
      render :index
    end
  end

  def edit
    
  end

  private

  def penguin_params
    params.require(:penguin).permit(:name, :age, :furry)
  end
end