User.create!(name:  "Danh Manh",
  email: "dmanh@gmail.com",
  password: "danhmanh",
  password_confirmation: "danhmanh",
  admin: true)

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name, email: email,
              password: password, password_confirmation: password)
end
