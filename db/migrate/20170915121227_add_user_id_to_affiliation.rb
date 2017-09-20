class AddUserIdToAffiliation < ActiveRecord::Migration
  def change
    add_column :affiliations, :user_id, :integer, null: false
  end
end
