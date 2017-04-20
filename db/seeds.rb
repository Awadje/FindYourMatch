User.destroy_all
Day.destroy_all

student1 = User.create!(email: "student1@gmail.com", password: "123456")
student2 = User.create!(email: "student2@gmail.com", password: "123456")
admin1 = User.create!(email: "admin1@gmail.com", password: "123456")

day1 = Day.create!(day: DateTime.new(2017, 5, 22), user_id: 1, match:["student1", "student2"])
day2 = Day.create!(day: DateTime.new(2017, 5, 23), user_id: 2, match:["student1", "student2"])
day3 = Day.create!(day: DateTime.new(2017, 5, 24), user_id: 3, match:["student1", "student2"])
