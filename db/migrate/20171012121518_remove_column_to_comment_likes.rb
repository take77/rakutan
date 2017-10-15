class RemoveColumnToCommentLikes < ActiveRecord::Migration
  def change
    remove_column :comment_likes, :commentables_count, :integer
  end
end
