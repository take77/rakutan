class CahngeFileColumnToNote < ActiveRecord::Migration
  def change
    change_column :notes, :file, :binary, null: false
  end
end
