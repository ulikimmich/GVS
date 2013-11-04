class AddExtraUserFields < ActiveRecord::Migration
  def change
    add_column :users, :status, :string
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :address, :string
    add_column :users, :country, :string
    add_column :users, :phone, :string

  end
end
