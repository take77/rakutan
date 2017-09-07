class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :image
      t.integer :year
      t.integer :explanation
      t.timestamps null: false
    end
  end
end
