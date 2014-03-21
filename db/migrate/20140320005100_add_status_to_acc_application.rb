class AddStatusToAccApplication < ActiveRecord::Migration
  def change
    add_column :acc_applications, :status, :string, default: "new"
  end
end
