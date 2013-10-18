class PagesController < ApplicationController
  def home
  end

  def about
  end

  def services
  end

  def partners

  end

  def contact

  end

  def dispatch_email
    user_info = params[:user_info]
    if ContactMailer.send_email(user_info).deliver
      flash[:notice] = "Your email was successfully sent."
    else
      flash[:error] = "Couldn't send your message."
    end
    redirect_to contact_path
  end

end
