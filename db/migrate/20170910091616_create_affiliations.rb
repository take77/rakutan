class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.string :college, default: '', null: false
      t.string :department, default: '', null: false
      t.timestamps null: false
    end
  end
end
