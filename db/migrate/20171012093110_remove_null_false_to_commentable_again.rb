class RemoveNullFalseToCommentableAgain < ActiveRecord::Migration
  def change
    change_column :commentables, :comment_id, :integer, null: true
    change_column :commentables, :comment_type, :string, null: true
  end
end
