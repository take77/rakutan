class ClipReport < ActiveRecord::Base

  validates :user_id, :uniqueness => {:scope => :report_id}

  belongs_to :user
  belongs_to :report
  has_one :clipable, as: :clip, dependent: :destroy
end
