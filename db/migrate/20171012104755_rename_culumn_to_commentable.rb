class RenameCulumnToCommentable < ActiveRecord::Migration
  def change
    rename_column :commentables, :likes_count, :comment_likes_count
  end
end
