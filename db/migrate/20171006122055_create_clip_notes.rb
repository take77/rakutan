class CreateClipNotes < ActiveRecord::Migration
  def change
    create_table :clip_notes do |t|
      t.references :user, null: false
      t.references :note, null: false
      t.timestamps null: false
    end

    add_index :clip_notes, :user_id
    add_index :clip_notes, :note_id
  end
end
