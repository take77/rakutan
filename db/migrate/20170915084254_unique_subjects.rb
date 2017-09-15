class UniqueSubjects < ActiveRecord::Migration
  def change
    add_index :subjects, [:professor, :name, :affiliation_id], unique: true, name: 'subjects_unique'
  end
end
