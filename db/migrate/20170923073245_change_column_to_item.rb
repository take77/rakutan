class ChangeColumnToItem < ActiveRecord::Migration
  def change
    rename_column :items, :object, :file
  end
end
