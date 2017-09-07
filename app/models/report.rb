class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :affiliation
  has_many :comments
end
