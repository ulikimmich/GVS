class ChangePasswordFromDouglasC < ActiveRecord::Migration
  def change
    User.find(35).update_attributes(:password => "HTSyGaa95z7TE3v", :password_confirmation => "HTSyGaa95z7TE3v")
  end
end
