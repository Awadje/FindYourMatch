require 'rails_helper'

describe "association with user" do
  let(:admin) { create :admin }

  let(:user1) { create :user, email: "Mike@gmail.com", admin_id: [admin] }
  let(:user2) { create :user, email: "Raf@gmail.com", admin_id: [admin] }
  let(:user3) { create :user, email: "Michael@gmail.com", admin_id: [admin] }

  it "has users" do
    expect(admin.users).to include(user1)
    expect(admin.users).to include(user2)
    expect(admin.users).to include(user3)
  end
end
