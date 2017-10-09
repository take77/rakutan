class CreateClipables < ActiveRecord::Migration
  def change
    create_table :clipables do |t|
      t.integer :content_id, null: false
      t.string :content_type, null: false
      t.integer :affiliation_id, null:false
      t.integer :subject_id, null:false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
