class CreateNoteItems < ActiveRecord::Migration
  def change
    create_table :note_items do |t|
      t.binary :note_file, null: false
      t.integer :note_id, null: false
      t.timestamps null: false
    end
  end
end
