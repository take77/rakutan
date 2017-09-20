class RenameColumnToExamsAgain < ActiveRecord::Migration
  def change
    rename_column :exams, :image, :file
  end
end
