class DropTableClipExam < ActiveRecord::Migration
  def change
    drop_table :clip_exams
  end
end
