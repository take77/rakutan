class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :exams, through: :clip_exams
  has_many :clip_exams, dependent: :destroy
  has_many :reports, through: :clip_reports
  has_many :clip_reports, dependent: :destroy
  has_many :notes, through: :clip_notes
  has_many :clip_notes, dependent: :destroy
  has_many :exam_comments
  has_many :report_comments
  has_many :notes_comments
  has_many :items
  belongs_to :affiliation
  has_many :subjects, through: :user_subjects
  accepts_nested_attributes_for :items
  validates :email, uniqueness: true
  validates :nickname, uniqueness: true
end
