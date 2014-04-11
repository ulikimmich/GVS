class AddDraftxToAccApplication < ActiveRecord::Migration
  def change
    add_column :acc_applications, :draft, :boolean, default: true
  end
end