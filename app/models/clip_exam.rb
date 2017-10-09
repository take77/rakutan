class ClipExam < ActiveRecord::Base

  validates :user_id, :uniqueness => {:scope => :exam_id}

  belongs_to :user
  belongs_to :exam
  has_one :clipable, as: :clip, dependent: :destroy
end
