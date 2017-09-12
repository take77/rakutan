class ChangeColumnToReportComments < ActiveRecord::Migration
  def change
    change_column :report_comments, :text, :text, null:false
    change_column :report_comments, :parent_id, :integer, null: false
    change_column :report_comments, :like, :integer, default: 0
    change_column :report_comments, :report_id, :integer, null: false
    change_column :report_comments, :user_id, :integer, null: false
  end
end
