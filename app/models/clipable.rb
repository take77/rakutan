class Clipable < ActiveRecord::Base
  belongs_to :clip, polymorphic: true
end
