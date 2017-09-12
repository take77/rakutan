class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :professor, null: false, default: ""
      t.string :name, null: false, default: ""
      t.integer :affiliation_id, null: false
      t.timestamps null: false
    end
  end
end
