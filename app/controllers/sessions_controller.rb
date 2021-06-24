class SessionsController < ApplicationController
      skip_before_action :login_required, only: %i[new create destroy]
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to user_path(user.id)
        else
    flash[:danger] = 'I failed to login'
    render :new
  end
  end

  def destroy
    @session.destroy(:user_id)
      flash[:notice] = 'Session ended'
      redirect_to new_user_path
  end
  end
