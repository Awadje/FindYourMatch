require 'rails_helper'

RSpec.describe User, type: :model do
  let(:student1) { create :user }
  let(:student2) { create :user }
  let(:student3) { create :user }
  let(:admin) { create :user, admin: true }

  describe "promote or demote" do
    it "upgrades a user to admin" do
      student1
      expect(student1.admin?).to eq(false)
    end
    it "demotes a admin to user" do
      admin
      expect(admin.admin?).to eq(true)
    end
  end
end
