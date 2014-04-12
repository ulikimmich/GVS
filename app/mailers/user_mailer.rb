class UserMailer < ActionMailer::Base
  default from: "accel@globalvirtualstudio.com"

  attr_accessor :name, :email, :body

  def new_message(message)
    @message = message
    mail(:to => "info@globalvirtualstudio.com", :subject => "Message from GVS Website Contact Form")
  end

  def registration_confirmation(user)
    @user = user
    mail(:to => @user.email, :from => "accel@globalvirtualstudio.com", :subject => "GVS Transmedia Accelerator, Registration Confirmation")
  end

end
