class Exam < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :affiliation
  has_many :exam_comments
end
