class ReportComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :report
end
