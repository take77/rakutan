class RenameColumnTocomments < ActiveRecord::Migration
  def change
    rename_column :comments, :comment_id, :commentable_id
    rename_column :comments, :comment_type, :commentable_type
  end
end
