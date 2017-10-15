class CreateComentables < ActiveRecord::Migration
  def change
    create_table :comentables do |t|
      t.integer "comment_id", null: false
      t.string "comment_type", null: false
      t.integer "user_id", null: false
      t.integer "likes_count", null: false, default: 0
      t.timestamps null: false
    end
  end
end
