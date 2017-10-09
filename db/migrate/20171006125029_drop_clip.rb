class DropClip < ActiveRecord::Migration
  def change
    drop_table :clips
  end
end
