class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :image
      t.integer :year
      t.integer :explanation
      t.timestamps null: false
    end
  end
end
