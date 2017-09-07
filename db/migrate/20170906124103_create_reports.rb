class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :image
      t.integer :year
      t.integer :explanation
      t.timestamps null: false
    end
  end
end
