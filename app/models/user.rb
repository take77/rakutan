class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :exams
  has_many :reports
  has_many :notes
  has_many :comments
  belongs_to :affiliation
  has_many :subjects, through: :users_subjects
end
