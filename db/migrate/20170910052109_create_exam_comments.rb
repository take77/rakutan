class CreateExamComments < ActiveRecord::Migration
  def change
    create_table :exam_comments do |t|
      t.text :text
      t.integer :parent_id
      t.integer :rate
      t.integer :exams_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
