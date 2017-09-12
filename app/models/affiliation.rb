class Affiliation < ActiveRecord::Base
  has_many :users
  has_many :subjects
  has_many :exams
  has_many :reports
  has_many :notes
end
