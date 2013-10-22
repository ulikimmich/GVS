class UserMailer < ActionMailer::Base

  default :from => "noreply@globalvirtualstudio.com"
  default :to => "noreply@globalvirtualstudio.com"

  def new_message(message)
    @message = message
    mail(:subject => "Message from GVS Contact Form")

  end


end
