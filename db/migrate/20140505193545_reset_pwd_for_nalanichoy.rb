class ResetPwdForNalanichoy < ActiveRecord::Migration
  def change
    User.find(81).update_attributes(:password => "mMq3tZm5NSo885L", :password_confirmation => "mMq3tZm5NSo885L")
  end
end
