require 'rails_helper'
include NotesHelper

# Specs in this file have access to a helper object that includes
# the NotesHelper. For example:
#
# describe NotesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe NotesHelper, type: :helper do
  let(:creator) { User.first_or_create!(name: "Chaya", email: "chaya@test.com", password: "password", password_confirmation: "password") }

  let(:note) { Note.new(title: "Some string",body: "some text") }
    
  it "assigns a user to a note" do
    assign_note_creator(note, creator)
    expect(note.user).to be(creator)
  end
end
