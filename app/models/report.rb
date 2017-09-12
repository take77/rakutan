class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :affiliation
  has_many :report_comments
end
