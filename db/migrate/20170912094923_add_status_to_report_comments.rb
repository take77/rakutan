class AddStatusToReportComments < ActiveRecord::Migration
  def change
    add_column :report_comments, :status, :integer, null: false
  end
end
