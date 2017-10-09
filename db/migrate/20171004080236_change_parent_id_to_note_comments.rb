class ChangeParentIdToNoteComments < ActiveRecord::Migration
  def change
    change_column :note_comments, :parent_id, :integer, null: false, default: 0
  end
end
