require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create!(name: "Chaya", email: "chaya@email.com", password: "password")
    @note1 = @user.notes.create!(title: "to do something")
    @note2 = @user.notes.create!(body: "not to do something")
  end

  it "has a name" do
    expect(@user.name).to eq("Chaya")
  end

  it "has an email" do
    expect(@user.email).to eq("chaya@email.com")
  end
  it "counts the notes" do
    expect(@user.note_count).to eq(2)
  end
end
