class UserMailer < ActionMailer::Base
  default from: "noreply@globalvirtualstudio.com"

  attr_accessor :name, :email, :body

  def new_message(message)
    @message = message
    mail(:to => "info@globalvirtualstudio.com", :subject => "Message from GVS Contact Form")
  end

  def registration_confirmation(user)
    @user = user
    mail(:to => @user.email, :subject => "GVS Transmedia Accelerator, Registration Confirmation")
  end

end
