class RenameColumnToNoteComments < ActiveRecord::Migration
  def change
    rename_column :note_comments, :exams_id, :note_id
  end
end
