class HousesController < ApplicationController

  def index
    @houses = current_user.houses.order(:created_at)
  end

  def new
    @regions = Region.all
    @house = House.new
  end

  def create
    @regions = Region.all
    @house = House.new(house_params)

    if @house.name == HouseMaintenance.DefaultHouseName()
      render(:new)
      return
    end

    if @house.save
      redirect_to("/")
    else
      render(:new)
    end
  end

  def show
    @house = House.find_by({id: params["id"]})
    @default = HouseMaintenance.IsDefaultHouse(@house)
  end

  def edit
    @regions = Region.all
    @house = House.find_by({id: params["id"]})
    @default = HouseMaintenance.IsDefaultHouse(@house)
  end

  def update
    @regions = Region.all
    @house = House.find_by({id: params["id"]})

    if HouseMaintenance.IsDefaultHouse(@house)
      # Don't allow updating of the default house.
      # This should be prevented by the edit method,
      # and this check is just here for extra protection.
      # TODO: Error message when failing
      # TODO: Allow updating the history of the default house?
      flash.now[:alert] = "Not allowed to edit No House"
      @default = true
      render(:edit)
      return
    else
      @default = false
    end

    # Don't allow the house to be updated to the default house name
    if HouseMaintenance.IsDefaultHouse(params[:house][:name])
      # TODO: Don't just sliently ignore the name update
      params[:house][:name] = @house.name
    end

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
