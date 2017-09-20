class Subject < ActiveRecord::Base
  has_many :exams
  has_many :reports
  has_many :notes
  has_many :users, through: :user_subjects
  belongs_to :affiliation, required: true
  validates :professor, uniqueness:{scope: [:name, :affiliation_id]}
end
