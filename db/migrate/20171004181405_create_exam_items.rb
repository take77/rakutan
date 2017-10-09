class CreateExamItems < ActiveRecord::Migration
  def change
    create_table :exam_items do |t|
      t.binary :exam_file, null: false
      t.integer :exam_id, null: false
      t.timestamps null: false
    end
  end
end
