class CreateReportItems < ActiveRecord::Migration
  def change
    create_table :report_items do |t|
      t.binary :report_file, nul: false
      t.integer :report_id, null: false
      t.timestamps null: false
    end
  end
end
