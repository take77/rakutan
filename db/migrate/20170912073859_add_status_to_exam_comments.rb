class AddStatusToExamComments < ActiveRecord::Migration
  def change
    add_column :exam_comments, :status, :integer, null: false
  end
end
