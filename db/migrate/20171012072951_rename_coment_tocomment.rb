class RenameComentTocomment < ActiveRecord::Migration
  def change
    rename_table :comentables, :commentables
  end
end
