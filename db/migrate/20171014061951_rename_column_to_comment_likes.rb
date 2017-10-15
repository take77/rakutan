class RenameColumnToCommentLikes < ActiveRecord::Migration
  def change
    rename_column :comment_likes, :commentable_id, :comment_id
  end
end
