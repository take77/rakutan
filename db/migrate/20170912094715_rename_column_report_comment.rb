class RenameColumnReportComment < ActiveRecord::Migration
  def change
    rename_column :report_comments, :rate, :like
    rename_column :report_comments, :exams_id, :report_id
  end
end
