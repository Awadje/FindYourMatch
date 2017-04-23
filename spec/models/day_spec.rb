require 'rails_helper'

RSpec.describe Day, type: :model do
  let!(:student1) { create :user, admin: false, id: 1}
  let!(:student2) { create :user, admin: false, id: 2}
  let!(:student3) { create :user, admin: false, id: 3}

 context "a day knows about it's users" do
   let!(:day) { create :day, student_a: student1, student_b: student3 }

   it "has users" do
     expect(day.users).to include(student1)
     expect(day.users).to include(student3)
     expect(day.users).not_to include(student2)
   end
 end
end
