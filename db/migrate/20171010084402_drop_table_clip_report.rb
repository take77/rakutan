class DropTableClipReport < ActiveRecord::Migration
  def change
    drop_table :clip_reports
  end
end
