class CreateClipExams < ActiveRecord::Migration
  def change
    create_table :clip_exams do |t|
      t.references :user, null: false
      t.references :exam, null: false
      t.timestamps null: false
    end

    add_index :clip_exams, :user_id
    add_index :clip_exams, :exam_id
  end
end
