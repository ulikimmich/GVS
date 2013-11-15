class UserMailer < ActionMailer::Base
  default from: "no-reply@globalvirtualstudio.com"
  default to: "noreply@globalvirtualstudio.com"

  attr_accessor :name, :email, :body

  def new_message(message)
    @message = message
    mail(:subject => "Message from GVS Contact Form")
  end

end
