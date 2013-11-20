namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Felipe Zamora",
                 email: "f.zamora@globalvirtualstudio.com",
                 password: "gvskona1",
                 password_confirmation: "gvskona1",
                 admin: true)
    5.times do |n|
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