class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.text :college
      t.text :department
      t.text :subject
      t.text :teacher
      t.timestamps null: false
    end
  end
end
