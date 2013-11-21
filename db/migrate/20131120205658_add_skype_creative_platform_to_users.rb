class AddSkypeCreativePlatformToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skype, :string
    add_column :users, :creative_platform_profile, :string
  end
end
