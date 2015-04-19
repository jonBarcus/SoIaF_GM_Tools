class CharactersController < ApplicationController

  def index
    @characters = current_user.characters
  end


  def new
    @houses = current_user.houses
    @ages = Age.all
    @genders = Gender.all
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      NewCharacterAbilities.new(@character.id)
      redirect_to("/")
    else
      render("/characters/new")
    end

  end

  def show
    @character = Character.find_by({id: params["id"]})
  end

  def edit
    @houses = current_user.houses
    @character = Character.find_by({id: params["id"]})
  end

  def update
    @character = Character.find_by({id: params["id"]})

    @character.update(character_params)

    if @character.save
      redirect_to("/characters/#{@character.id}")
    else
      #OPTIMIZE Develop style guide with Jeff and Mo
      render :edit
    end
  end


  def destroy
    character = Character.find_by({id: params["id"]})
    character.delete
    redirect_to("/characters")
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :surname,
      :age_id,
      :gender_id,
      :house_id,
      :description,
      :history,
      :user_id
      )


  end


end
