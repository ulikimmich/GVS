class UsersController < ApplicationController

  before_action :signed_in_user, only: [ :edit, :update ]

  def new
    @user = User.new

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Sign up successful."
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile successfully updated."
      redirect_to @user
    else
      render 'edit'
    end
  end


  private

    #Strong parameters against mass assignments.
    #Allows us to specify params that are requiered and those that are permitted
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def signed_in_user
      unless signed_in?
        flash[:warning] = "Please sign in"
        redirect_to signin_url
      end
    end
end
