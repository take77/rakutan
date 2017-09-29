class RemoveFileToNote < ActiveRecord::Migration
  def change
    remove_column :notes, :file, :binary, nul: false
  end
end
