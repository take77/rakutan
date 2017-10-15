class DropTableClipable < ActiveRecord::Migration
  def change
    drop_table :clipables
  end
end
