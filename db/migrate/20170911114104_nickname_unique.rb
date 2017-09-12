class NicknameUnique < ActiveRecord::Migration
  def change
    add_index :users, :nickname, unique: true, name: 'nickname_unique'
  end
end
