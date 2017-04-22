require 'rails_helper'

RSpec.describe Day, type: :model do
  let!(:student1) { create :user, admin: false }
  let!(:student2) { create :user, admin: false }
  let!(:student3) { create :user, admin: false }

 context "a day knows about it's users" do
   let(:day) { create :day, match: [student1, student3] }

   it "has users" do
     expect(day.users).to include(student1)
     expect(day.users).to include(student3)
     expect(day.users).not_to include(student2)
   end
 end
end
