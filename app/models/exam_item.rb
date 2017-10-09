class ExamItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :exam
  mount_uploader :exam_file, ExamFileUploader
end
