class RenameTableToCommentable < ActiveRecord::Migration
  def change
    rename_table :commentables, :comments
  end
end
