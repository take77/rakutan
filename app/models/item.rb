class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :exam
  belongs_to :report
  belongs_to :note
  mount_uploader :file, FileUploader

end
