class UserMailer < ActionMailer::Base
  default from: "no-reply@globalvirtualstudio.com"

  attr_accessor :name, :email, :message

  def send_email(user_info)
    @user_info = user_info

    mail(
        to: "uli@globalvirtualstudio.com",
        subject: "GVS Contact Form Message",
        from: "no-reply@globalvirtualstudio.com",
        date: Time.now,
        content_type: "text/html"
    )
  end


end
