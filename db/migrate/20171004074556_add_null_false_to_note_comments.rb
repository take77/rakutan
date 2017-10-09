class AddNullFalseToNoteComments < ActiveRecord::Migration
  def change
    change_column :note_comments, :like, :integer, null: false
  end
end
