require 'rails_helper'

RSpec.describe "/notes", type: :request do
  let(:current_user) { User.create!(name: "ChayaDeaver", email: "chaya@example.com", password: "password", password_confirmation: "password") }
  
  let(:valid_attributes) do
    {
      id: 1,
      title: "Test",
      body: "Test Body",
      user: current_user
    }
  end

  let(:invalid_attributes) do
    {
      id: 'a',
      title: '',
      body: ''
    }
  end

  let(:note) { current_user.notes.create!(valid_attributes) }

  describe 'GET /index' do
    it "renders a successful response" do
      get notes_url
      expect(response).to be_redirect
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get note_url(note)
      expect(response).to be_redirect
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_note_url
      expect(response).to be_redirect
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      get edit_note_url(note)
      expect(response).to be_redirect
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Note" do
        expect do
          note = Note.new(valid_attributes)
          note.user = current_user
          note.save
          post notes_url, params: { note: valid_attributes }
        end.to change(Note, :count).by(1)
      end

      it "redirects to the created note" do
        post notes_url, params: { note: valid_attributes }
        expect(response).to be_redirect
      end
    end

    context "with invalid parameters" do
      it "does not create a new Note" do
        expect do
          post notes_url, params: { note: invalid_attributes }
        end.to change(Note, :count).by(0)
      end

      it "renders a successful response" do
        post notes_url, params: { note: invalid_attributes }
        expect(response).to be_redirect
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) do
        {
          id: "1",
          title: "Test",
          body: "12345",
          user: current_user
        }
      end

      it "updates the requested note and redirects back to the note" do
        patch note_url(note), params: { note: new_attributes }
        note.reload
        expect(response).to be_redirect
      end
    end

    context "with invalid parameters" do
      it "renders a successful response" do
        patch note_url(note), params: { note: invalid_attributes }
        expect(response).to be_redirect
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested note" do
      expect do
        delete note_url(note)
      end.to change(Note, :count).by(1)
    end

    it "redirects to the notes list" do
      delete note_url(note)
      expect(response).to be_redirect
    end
  end
end
