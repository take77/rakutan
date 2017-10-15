class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :comment_likes

  def like_user(user_id)
    self.comment_likes.find_by(user_id: user_id)
  end
end
