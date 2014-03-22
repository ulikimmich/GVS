class AddedLonLatForGmap < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :float, default: "21.912870"
    add_column :users, :longitude, :float, default: "-160.161145"
    add_column :users, :gmaps, :boolean
  end
end
