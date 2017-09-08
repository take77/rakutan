class RemoveTeacherFromAffiliations < ActiveRecord::Migration
  def change
    remove_column :affiliations, :teacher, :text
  end
end
