class CreateUsersSubjects < ActiveRecord::Migration
  def change
    create_table :users_subjects do |t|
      t.integer :users_id
      t.integer :subjects_id
      t.timestamps null: false
    end
  end
end
