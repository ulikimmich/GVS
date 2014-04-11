namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "GTA Admin",
                 email: "accel@globalvirtualstudio.com",
                 password: "gvskonaY2K10",
                 password_confirmation: "gvskonaY2K10",
                 admin: true)
    1.times do |n|
      name  = "Uli Kimmich"
      email = "uli@globalvirtualstudio.com"
      password  = "gvskona1"
      admin = false
      User.create!(name: name,
                    email: email,
                    password: password,
                    password_confirmation: password,
                    admin: admin)
    end
  end
end