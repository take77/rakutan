class RenameColumnToReports < ActiveRecord::Migration
  def change
    rename_column :reports, :image, :file
  end
end
