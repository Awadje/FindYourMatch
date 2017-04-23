require 'rails_helper'

describe "Manage Pairs" do
  let!(:admin1) { create :user, email: "admin1@test.com", admin: true }


  context "Admin#days" do
    it "Navigate to page" do
      login_as admin1
      visit admin_days_path
      expect(page).to have_text "Pairs"

    end
end
end
