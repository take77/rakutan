class ReportItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :report
  mount_uploader :report_file, ReportFileUploader
end
