class ChangeColumnToUserTest < ActiveRecord::Migration
  def change
    change_column :users, :affiliation_id, :integer, null:false
  end
end
