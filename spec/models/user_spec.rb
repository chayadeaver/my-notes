require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { User.create!(name: "Chaya", email: "chaya@email.com", password: "password") }
    
  it "has a name" do
    expect(user.name).to eq("Chaya")
  end

  it "has an email" do
    expect(user.email).to eq("chaya@email.com")
  end

end
