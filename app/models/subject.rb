class Subject < ActiveRecord::Base
  has_many :exams
  has_many :reports
  has_many :notes
  has_many :users, through: :user_subjects
end
