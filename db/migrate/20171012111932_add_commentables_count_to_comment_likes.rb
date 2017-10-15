class AddCommentablesCountToCommentLikes < ActiveRecord::Migration

  def self.up

    add_column :comment_likes, :commentables_count, :integer, :null => false, :default => 0

  end

  def self.down

    remove_column :comment_likes, :commentables_count

  end

end
