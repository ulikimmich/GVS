class AddUseridToAccApplication < ActiveRecord::Migration
  def change
    add_column :acc_applications, :user_id, :integer
  end
end
