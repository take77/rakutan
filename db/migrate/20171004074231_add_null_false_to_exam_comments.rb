class AddNullFalseToExamComments < ActiveRecord::Migration
  def change
    change_column :exam_comments, :like, :integer, null: false
  end
end
