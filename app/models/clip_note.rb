class ClipNote < ActiveRecord::Base

  validates :user_id, :uniqueness => {:scope => :exam_id}

  belongs_to :user
  belongs_to :note
  has_one :clipable, as: :clip, dependent: :destroy
end
