class CreateCommentLikes < ActiveRecord::Migration
  def change
    create_table :comment_likes do |t|
      t.integer :commentable_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
