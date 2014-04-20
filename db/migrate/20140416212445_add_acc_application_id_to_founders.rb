class AddAccApplicationIdToFounders < ActiveRecord::Migration
  def change
    add_column :founders, :acc_application_id, :integer
  end
end
