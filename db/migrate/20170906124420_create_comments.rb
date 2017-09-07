class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :parent_id
      t.integer :rate
      t.timestamps null: false
    end
  end
end
