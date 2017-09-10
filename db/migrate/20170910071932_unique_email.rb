class UniqueEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true, name: 'unique_email'
  end
end
