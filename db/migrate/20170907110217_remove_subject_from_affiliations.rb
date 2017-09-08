class RemoveSubjectFromAffiliations < ActiveRecord::Migration
  def change
    remove_column :affiliations, :subject, :text
  end
end
