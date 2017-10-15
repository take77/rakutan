class RemoveColumnToCommentable < ActiveRecord::Migration
  def change
    remove_column :commentables, :comment_likes_count, :integer
  end
end
