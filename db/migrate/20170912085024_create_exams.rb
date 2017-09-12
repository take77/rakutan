class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :image, null: false
      t.date :taken_date, null: false, default: 0
      t.text :explanation
      t.integer :subject_id, null: false
      t.integer :affiliation_id, null: false
      t.string :title, null: false, default: ""
      t.timestamps null: false
    end
  end
end
