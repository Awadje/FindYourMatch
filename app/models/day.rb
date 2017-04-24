class Day < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :id_first_student, :class_name => 'User', :foreign_key => 'student_a'
  belongs_to :id_second_student, :class_name => 'User', :foreign_key => 'student_b'

  def self.matcherToday(day)
    day = day.to_date
    matches = matcher()

    matches.each do |student|
    new_day = Day.create(id_first_student: student[0], id_second_student: student[1], day: day)

  

  end
end


  def self.matcher()
    matches = []
    selected_students = []

    students = User.all.select { |u| u.admin == false }
    students.push(User.find{ |u| u.no_match == true}) if students.length.odd?
    matches_per_day = students.length / 2

    matches_per_day.times do
      random_student_a = rand(students.length)
      first_selection = students[random_student_a]
      selected_students << students.delete_at(random_student_a)

      random_student_b = rand(students.length)
      second_selection = students[random_student_b]
      selected_students << students.delete_at(random_student_b)

      matches << [first_selection, second_selection]



    end
    return matches
  end

end
