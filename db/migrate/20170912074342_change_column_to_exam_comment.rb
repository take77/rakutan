class ChangeColumnToExamComment < ActiveRecord::Migration
  def change
    change_column :exam_comments, :text, :text, null: false
    change_column :exam_comments, :parent_id, :integer, null: false
    change_column :exam_comments, :rate, :integer, default: 0
    change_column :exam_comments, :exams_id, :integer, null: false
    change_column :exam_comments, :user_id, :integer, null: false
  end
end
