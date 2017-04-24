require 'rails_helper'

describe "Manage Users" do
  let!(:user1) { create :user, email: "user1@test.com" }
  let!(:user2) { create :user, email: "user2@test.com" }
  let!(:admin1) { create :user, email: "admin1@test.com", admin: true }
  let!(:admin2) { create :user, email: "admin2@test.com", admin: true }

  context "Users#index" do
    it "refuses when you're not an admin" do
      login_as user1
      visit admin_users_path
      expect(page).to have_text "You are not an admin."
      expect(page).not_to have_text "user2@test.com"
      expect(page).not_to have_text "admin@test.com"
    end
    it "generates a list of users" do
      login_as admin1
      visit admin_users_path
      expect(page).to have_text "user1@test.com"
      expect(page).to have_text "user2@test.com"
      expect(page).to have_text "admin1@test.com"
      expect(page).to have_text "admin2@test.com"
    end
  end
  context "Users#upgrade & Users#demote" do
    it "upgrades a user to an admin" do
      login_as admin1
      visit admin_users_path
      page.has_field?('admin', checked: true)
      click_button 'Update'


      expect(page).to have_text "#{user2.email} is Admin"
    end
    it "demotes a user to an student" do
      login_as admin1
      visit admin_users_path
      page.has_field?('admin', unchecked: true)
      click_button 'Update'


      expect(page).to have_text "#{admin2.email}"
    end
  end
end
