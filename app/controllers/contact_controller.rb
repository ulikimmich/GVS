class ContactController < ApplicationController


  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      UserMailer.new_message(@message).deliver
      flash.now[:success] = "Email was successfully sent."
      render :new
    else
      flash.now[:danger] = "Please enter your name and a valid email address."
      redirect_to contact_path
    end
  end

end
