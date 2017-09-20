class AddSubjectIdToFeedContent < ActiveRecord::Migration
  def change
    add_column :feed_contents, :subject_id, :integer, null: false
  end
end
