class ReportComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :report
  has_one :comment, as: :commentable, dependent: :destroy
  after_create :create_comment

  private
  def create_comment
    self.comment = Comment.create(user_id: user_id)
  end
end
