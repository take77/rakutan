class RemoveNullFalseToCommentable < ActiveRecord::Migration
  def change
    change_column :commentables, :comment_id, :integer
    change_column :commentables, :comment_type, :string
  end
end
