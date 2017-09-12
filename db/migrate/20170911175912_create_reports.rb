class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :image, null: false
      t.date :deadline, null: false, default: 0
      t.string :title, null: false, default: ""
      t.text :explanation
      t.integer :subject_id, null: false
      t.integer :affiliation_id, null: false
      t.timestamps null: false
    end
  end
end
