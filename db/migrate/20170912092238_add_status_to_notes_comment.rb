class AddStatusToNotesComment < ActiveRecord::Migration
  def change
    add_column :note_comments, :status, :integer, null: false
  end
end
