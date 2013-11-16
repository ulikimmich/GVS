class UserMailer < ActionMailer::Base
  default from: "noreply@globalvirtualstudio.com"
  default to: "f.zamora@globalvirtualstudio.com"

  attr_accessor :name, :email, :body

  def new_message(message)
    @message = message
    mail(:subject => "Message from GVS Contact Form")
  end

end
