require 'rails_helper'

RSpec.describe User, type: :model do
  let(:student1) { create :user }
  let(:student2) { create :user }
  let(:student3) { create :user }
  let(:admin) { create :user, admin: true }
  let(:day1) { create :day, users: [student1, student2] }


  describe "User is not an admin" do
    it "Admin is false" do
      student1
      expect(student1.admin?).to eq(false)
    end
    it "Admin is true" do
      admin
      expect(admin.admin?).to eq(true)
    end
end

    describe "student knows about his days" do
      it "knows the day he's in" do
        expect(student1.days).to include(day1)

  end
end
end
