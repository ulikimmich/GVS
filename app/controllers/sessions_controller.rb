class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      # if user admin redirect to the applications listing page after login
      if current_user.admin?
        redirect_back_or acc_applications_path
      # else go to the user's profile page
      else
        redirect_back_or user
      end

    else
      flash.now[:danger] = "Invalid user/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end