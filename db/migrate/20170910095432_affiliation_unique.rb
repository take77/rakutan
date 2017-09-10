class AffiliationUnique < ActiveRecord::Migration
  def change
    add_index :affiliations, [:college, :department], unique: true, name: 'affiliation_unique'
  end
end
