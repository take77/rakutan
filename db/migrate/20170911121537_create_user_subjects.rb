class CreateUserSubjects < ActiveRecord::Migration
  def change
    create_table :user_subjects do |t|
      t.integer :user_id, null: false
      t.integer :subject_id, null:false
      t.timestamps null: false
    end
  end
end
