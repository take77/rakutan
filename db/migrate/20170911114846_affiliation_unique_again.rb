class AffiliationUniqueAgain < ActiveRecord::Migration
  def change
    add_index :affiliations, [:college, :department, :course], unique: true, name: 'affiliation_unique_again'
  end
end
