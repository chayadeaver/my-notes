require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @user = User.create!(name: "Chaya", email: "chaya@email.com", password: "password")
  end

  context "with a title" do
    let(:note) { @user.notes.create!(title: "to do something") }

    it "can have a title without a body" do
      expect(note).to be_valid
    end

    it "title should not be longer than 30 characters" do
      expect(note).to be_valid
    end

    it "should have a user" do
      expect(note.user.name).to eq("Chaya")
    end
  
    it "can't have empty title or body" do
      note.title = nil
      note.body = nil
      expect(note).to_not be_valid
    end

  end

  context "with a body" do
    let(:note) { @user.notes.create!(body: "not to do something") }

    it "can have a body without a title" do
      expect(note).to be_valid
    end
  
    it "body should not be longer than 1000 characters" do
      expect(note).to be_valid
    end
  end

  
end
