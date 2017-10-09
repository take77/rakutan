class CreateClipReports < ActiveRecord::Migration
  def change
    create_table :clip_reports do |t|
      t.references :user, null: false
      t.references :report, null: false
      t.timestamps null: false
    end

    add_index :clip_reports, :user_id
    add_index :clip_reports, :report_id
  end
end
