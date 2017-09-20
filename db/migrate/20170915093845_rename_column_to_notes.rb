class RenameColumnToNotes < ActiveRecord::Migration
  def change
    rename_column :notes, :image, :file
  end
end
