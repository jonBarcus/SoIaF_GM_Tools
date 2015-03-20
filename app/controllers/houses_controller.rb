class HousesController < ApplicationController

  def index
    @houses = current_user.houses
  end

  def new
    @regions = Region.all
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      redirect_to("/")
    else
      render(:new)
    end
  end

  def show
    @house = House.find_by({id: params["id"]})
  end

  # TODO Create method to EDIT houses
  # TODO Create method to DELETE houses

  private

  def house_params
    params.require(:house).permit(
      :name,
      :region_id,
      :history,
      :user_id
      )
  end

end
