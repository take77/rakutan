class ChangeColumnToNoteComments < ActiveRecord::Migration
  def change
    change_column :note_comments, :text, :text, null: false
    change_column :note_comments, :parent_id, :integer, null: false
    change_column :note_comments, :rate, :integer, default: 0
    change_column :note_comments, :exams_id, :integer, null:false
    change_column :note_comments, :user_id, :integer, null: false
  end
end
