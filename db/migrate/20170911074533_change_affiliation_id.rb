class ChangeAffiliationId < ActiveRecord::Migration
  def change
    add_column :users, :affiliation_id, :integer, null: false
  end
end
