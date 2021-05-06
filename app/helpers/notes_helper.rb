module NotesHelper
  def assign_note_creator(note, creator)
    note.user = creator
    note
  end

end
