class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :affiliation
  has_many :comments
  belongs_to :subject
end
