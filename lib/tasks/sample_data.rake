namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "GTA Admin",
                 email: "admin@globalvirtualstudio.com",
                 password: "gvskonaY2K10",
                 password_confirmation: "gvskonaY2K10",
                 admin: true)
    3.times do |n|
      name  = Faker::Name.name
      email = "gvs-#{n+1}@gvs.com"
      password  = "testing"
      admin = false
      User.create!(name: name,
                    email: email,
                    password: password,
                    password_confirmation: password,
                    admin: admin)
    end
  end
end