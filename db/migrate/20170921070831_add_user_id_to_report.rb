class AddUserIdToReport < ActiveRecord::Migration
  def change
    add_column :reports, :user_id, :integer, null:false
  end
end
