User.destroy_all
Admin.destroy_all
Day.destroy_all

student1 = User.create!(email: "student1@gmail.com", password: "123456")
student2 = User.create!(email: "student2@gmail.com", password: "123456")
student3 = User.create!(email: "student3@gmail.com", password: "123456")

admin1 = Admin.create!(email: "admin1@gmail.com", password: "123456")
admin2 = Admin.create!(email: "admin2@gmail.com", password: "123456")
admin3 = Admin.create!(email: "admin3@gmail.com", password: "123456")

day1 = Day.create!(day: DateTime.new(2017, 5, 22), admin_id: 1, user_id: 1)
day2 = Day.create!(day: DateTime.new(2017, 5, 23), admin_id: 2, user_id: 1)
day3 = Day.create!(day: DateTime.new(2017, 5, 24), admin_id: 3, user_id: 1)
