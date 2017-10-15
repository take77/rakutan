class DropTableClipNote < ActiveRecord::Migration
  def change
    drop_table :clip_notes
  end
end
