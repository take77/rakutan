class Subject < ActiveRecord::Base
  belongs_to :affiliation
  has_many :exams
  has_many :reports
  has_many :notes
  has_many :users, through: :users_subjects
end
