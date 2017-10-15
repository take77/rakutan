class Clip < ActiveRecord::Base
  validates :user_id, :uniqueness => {:scope => :feed_content_id}
  belongs_to :feed_content
  belongs_to :user
end
