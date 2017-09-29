class RemoveFileToReport < ActiveRecord::Migration
  def change
    remove_column :reports, :file, :binary, nul: false
  end
end
