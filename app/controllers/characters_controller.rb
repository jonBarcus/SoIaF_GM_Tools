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
      CharacterMaintenance.newCharacterAbilities(@character.id)
      redirect_to("/")
    else
      render("/characters/new")
    end

  end

  def show
    @character = Character.find_by({id: params["id"]})
    @new_character = @character.created_at == @character.updated_at
    if @new_character
      binding.pry
      @ability_xp = @character.age.ability_xp
      @specialty_xp = @character.age.specialty_xp
    else
      @experience = @character.experience
    end
  end

  def edit
    @houses = current_user.houses
    @character = Character.find_by({id: params["id"]})
    @new_character = @character.created_at == @character.updated_at
    if @new_character
      @ability_xp = @character.age.ability_xp
      @specialty_xp = @character.age.specialty_xp
    else
      @experience = @character.experience
    end
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
