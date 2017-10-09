class ChangeParentIdToReportComments < ActiveRecord::Migration
  def change
    change_column :report_comments, :parent_id, :integer, null: false, default: 0
  end
end
