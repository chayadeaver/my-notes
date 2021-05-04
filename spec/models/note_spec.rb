require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @user = User.create!(name: "Chaya", email: "chaya@email.com", password: "password")
    @note1 = @user.notes.create!(title: "to do something")
    @note2 = @user.notes.create!(body: "not to do something")
    
  end
  
  it "should have a user" do
    expect(@note1.user.name).to eq("Chaya")
  end

  it "can't have empty title or body" do
    @note1.title = nil
    @note1.body = nil
    expect(@note1).to_not be_valid
  end

  it "can have a title without a body" do
    expect(@note1).to be_valid
  end

  it "can have a body without a title" do
    expect(@note2).to be_valid
  end

  it "title should not be longer than 30 characters" do
    expect(@note1).to be_valid
  end

  it "body should not be longer than 1000 characters" do
    expect(@note2).to be_valid
  end
end
