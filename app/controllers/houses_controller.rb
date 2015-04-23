class HousesController < ApplicationController

  def index
    @houses = current_user.houses.order(:created_at)
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

  def edit
    @regions = Region.all
    @house = House.find_by({id: params["id"]})
  end

  def update
    @house = House.find_by({id: params["id"]})

    @house.update(house_params)

    if @house.save
      redirect_to("/houses/#{@house.id}")
    else
      render(:edit)
    end
  end

  def destroy
    house = House.find_by({id: params[:id]})
    delete_it = HouseMaintenance.PrepareForHouseDeletion(house)
    if delete_it
      house.delete
    end

    redirect_to("/houses")
  end

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
