class RemoveUserIdToAffiliation < ActiveRecord::Migration
  def change
    remove_column :affiliations, :user_id, :integer, null: false
  end
end
