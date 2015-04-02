class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      House.create({region_id: 9, name: "No House", user_id: @user.id})
      redirect_to("/")
    else
      render(:new)
    end
  end


  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
      )


  end


end

# OPTIMIZE Check to see if there's anything we can do here
