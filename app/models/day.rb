class Day < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :student_a, :class_name => "User"
  belongs_to :student_b, :class_name => "User"

  def self.matcherToday(today)
    today = day.to_date
    matches = makeMatches()

    matches.each do |student|
    new_day = Day.create(student_a: student[0]), student_b: student[1], day: today)
  end


  def self.Matcher()
    matches = []
    selected_students []

    students = User.all.select { |u| u.admin == false }
    students.push(User.find{ |u| u.no_match == true}) if students.length.odd?
    matches_per_day = students.length / 2

    matches_per_day.times do
      random_student_a = rand(students.lenght)
      first_selection = students[random_student_a]
      selected_students << students.delete_at(random_student_a)

      random_student_b = rand(students.lenght)
      second_selection = students[random_student_b]
      selected_students << students.delete_at(random_student_b)

      matches << [first_selection, second_selection]

    end
    return matches
  end

end
