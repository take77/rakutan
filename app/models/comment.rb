class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :exam
  belongs_to :report
  belongs_to :note
end
