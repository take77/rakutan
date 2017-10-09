class ChangeParentIdToExamComments < ActiveRecord::Migration
  def change
    change_column :exam_comments, :parent_id, :integer, null: false, default: 0
  end
end
