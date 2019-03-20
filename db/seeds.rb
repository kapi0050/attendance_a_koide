User.create!(name:  "管理者",
             email: "1111@gmail.com",
             password:              "aaaaaaaa",
             password_confirmation: "aaaaaaaa",
             department:            "システム管理部",
             admin: true)
             
User.create!(name:  "aaaa@gmail.com",
             email: "aaaa@gmail.com",
             password:              "aaaaaaaa",
             password_confirmation: "aaaaaaaa",
             department:            "開発部A",
             working:               "出社中",
             admin: false)
             
User.create!(name:  "bbbb@gmail.com",
             email: "bbbb@gmail.com",
             password:              "bbbbbbbb",
             password_confirmation: "bbbbbbbb",
             department:            "開発部b",
             working:               "出社中",
             admin: false)
             
User.create!(name:  "cccc@gmail.com",
             email: "cccc@gmail.com",
             password:              "cccccccc",
             password_confirmation: "cccccccc",
             department:            "開発部c",
             working:               "出社中",
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