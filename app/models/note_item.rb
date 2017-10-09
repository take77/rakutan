class NoteItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :note
  mount_uploader :note_file, NoteFileUploader
end
