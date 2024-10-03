class PagesController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    
    if  @character.save
      redirect_to characters_path
    else
      render :new
    end
  end
  
  private
  def character_params
    params.required(:character).permit(:name, :location, :house)
  end
end
