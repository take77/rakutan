class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :exams
  has_many :reports
  has_many :notes
  has_many :exam_comments
  has_many :report_comments
  has_many :notes_comments
  belongs_to :affiliation
  has_many :subjects, through: :user_subjects
  validates :email, uniqueness: true
  validates :nickname, uniqueness: true
end
