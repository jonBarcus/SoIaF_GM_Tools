class SessionController < ApplicationController

  def new
    @failed_auth = false
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])

      session[:user_id] = user.id
      redirect_to("/")
    else
      @failed_auth = true
      render(:new)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/")
  end

end

# OPTIMIZE Check to see if there's anything to do here
