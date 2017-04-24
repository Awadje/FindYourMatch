require 'rails_helper'

describe "Navigating signup/signin Users" do
  context "logged in" do
    let(:user) { create :user }

    it "unknown user goes to root" do
      logout
      visit root_url

      expect(page).to have_text "Log In"
    end

    it "after sigin go to 'days#index'" do
      login_as user

      visit root_url

      expect(page).to have_text "Your Match"
    end
  end
end
