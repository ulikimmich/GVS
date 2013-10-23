namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Ulrich Kimmich",
                 email: "test@uli.com",
                 password: "testing123",
                 password_confirmation: "testing123")
    20.times do |n|
      name  = Faker::Name.name
      email = "worker-#{n+1}@uli2.org"
      password  = "testing123"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end