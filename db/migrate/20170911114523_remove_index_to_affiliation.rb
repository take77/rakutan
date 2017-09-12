class RemoveIndexToAffiliation < ActiveRecord::Migration
  def change
    remove_index :affiliations, name: 'affiliation_unique'
  end
end
