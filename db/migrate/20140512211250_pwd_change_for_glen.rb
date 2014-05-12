class PwdChangeForGlen < ActiveRecord::Migration
  def change
    User.find(97).update_attributes(:password => "HTSyGaa95z7TE3v", :password_confirmation => "HTSyGaa95z7TE3v")
  end
end
