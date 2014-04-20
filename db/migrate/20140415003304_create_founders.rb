class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
        t.string  :lastname
        t.string  :firstname
        t.string  :companyrole
        t.string  :email
        t.string  :address
        t.string  :city
        t.string  :state
        t.integer :zipcode
        t.string  :phone
        t.string  :dateofbirth
        t.string  :website
        t.text    :education
        t.text    :resume

        t.timestamps
    end
  end
end
