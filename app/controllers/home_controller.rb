class HomeController < ApplicationController
  def welcome
    @notes = Note.all
    if user_signed_in?
      redirect_to notes_path(@notes)
    end
  end
end
