class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.binary :object, null: false
      t.integer :exam_id, null:false
      t.integer :report_id, null: false
      t.integer :note_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
