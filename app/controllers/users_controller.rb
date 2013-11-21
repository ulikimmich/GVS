class UsersController < ApplicationController

  before_action :signed_in_user,  only: [ :edit, :update, :destroy ]
  before_action :correct_user,    only: [ :edit, :update ]
  before_action :admin_user,      only: [ :index, :destroy]

  def index
    @users = User.paginate(page: params[:page], :per_page   => 30, :order => 'name ASC')

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|

      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow render_to_string(:partial => "infoWindow", :locals => { :user => user})
    end
  end

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

  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile successfully updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end



  private

    #Strong parameters against mass assignments.
    #Allows us to specify params that are required and those that are permitted
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation,
                                  :avatar, :phone, :address, :city, :zipcode, :state, :country, :skype,
                                  :creative_platform_profile, :website, :status)
    end

    def signed_in_user
      unless signed_in?
        store_location
        flash[:warning] = "Please sign in"
        redirect_to signin_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


end
