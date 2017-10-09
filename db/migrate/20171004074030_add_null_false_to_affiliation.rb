class AddNullFalseToAffiliation < ActiveRecord::Migration
  def change
    change_column :affiliations, :course, :string, null: false
  end
end
