User.create!(name:  "管理者",
             email: "1111@gmail.com",
             password:              "11111111",
             password_confirmation: "11111111",
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
             working:               "退社中",
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

#拠点情報 base_edit
Base.create!(base_number:  "3333",
             base_name: "テスト33",
             attendance_type: "テストあああ")

Base.create!(base_number:  "4444",
             base_name: "テスト44",
             attendance_type: "テスト異易々")

Base.create!(base_number:  "5555",
             base_name: "テスト55",
             attendance_type: "テスト誤午後")
