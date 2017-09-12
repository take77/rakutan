class RenameColmunToExamComments < ActiveRecord::Migration
  def change
    rename_column :exam_comments, :rate, :like
    rename_column :exam_comments, :exams_id, :exam_id
  end
end
