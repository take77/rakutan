class AddCourseToAffiliation < ActiveRecord::Migration
  def change
    add_column :affiliations, :course, :string, default: ''
  end
end
