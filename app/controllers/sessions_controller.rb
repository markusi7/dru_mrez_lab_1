class SessionsController < ApplicationController
  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    if user.provider == "facebook"
      redirect_to movies_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
