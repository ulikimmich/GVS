class DisableDavidAsAdmin < ActiveRecord::Migration
  def change
    User.find(10).update_attribute :admin, false
  end
end
