class CahngeFileColumnToReport < ActiveRecord::Migration
  def change
    change_column :reports, :file, :binary, null: false
  end
end
