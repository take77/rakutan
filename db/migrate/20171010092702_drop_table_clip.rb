class DropTableClip < ActiveRecord::Migration
  def change
    drop_table :clips
  end
end
