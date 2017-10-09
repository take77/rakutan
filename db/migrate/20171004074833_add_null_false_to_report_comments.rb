class AddNullFalseToReportComments < ActiveRecord::Migration
  def change
    change_column :report_comments, :like, :integer, null: false
  end
end
