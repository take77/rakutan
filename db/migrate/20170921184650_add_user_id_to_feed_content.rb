class AddUserIdToFeedContent < ActiveRecord::Migration
  def change
    add_column :feed_contents, :user_id, :integer, nul: false
  end
end
