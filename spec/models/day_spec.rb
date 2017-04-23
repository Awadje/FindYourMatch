require 'rails_helper'

RSpec.describe Day, type: :model do
  let!(:student1) { create :user }
  let!(:student2) { create :user }
  let!(:student3) { create :user }

 context "a day knows about it's users" do
   let!(:day) { create :day, id_first_student: student1, id_second_student: student3 }

   it "has users" do
     expect(day.student_a).to include(student1)
     expect(day.student_b).to include(student3)
     expect(day.student_b).not_to include(student2)
   end
 end
end
