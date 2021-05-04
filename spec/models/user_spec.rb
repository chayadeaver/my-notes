require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  let (:user) { User.create!(name: "Chaya", email: "chaya@email.com", password: "password") }

  it "exists" do
    expect { User.new }.to_not raise_error
  end
    
  it "has a name" do
    expect(user.name).to eq("Chaya")
  end

  it "has an email" do
    expect(user.email).to eq("chaya@email.com")
  end

  it "should have a unique email" do
    User.create(name: "some user", email: "test@email.com", password: "password")
    user1 = User.new(name: "another user", email: "test@email.com", password: "password")
    user1.valid?
    expect(user1.errors[:email]).to include("has already been taken")
  end
end
