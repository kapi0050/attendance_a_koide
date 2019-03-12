User.create!(name:  "管理者",
             email: "email@sample.com",
             password:              "password",
             password_confirmation: "password",
             department:            "システム管理部",
             admin: true)
             
User.create!(name:  "aaaa@gmail.com",
             email: "aaaa@gmail.com",
             password:              "aaaaaaaa",
             password_confirmation: "aaaaaaaa",
             department:            "開発部A",
             admin: false)

59.times do |n|
  name  = Faker::Name.name
  email = "email#{n+1}@sample.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               department:            "テスト")
end