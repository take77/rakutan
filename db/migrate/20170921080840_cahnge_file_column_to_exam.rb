class CahngeFileColumnToExam < ActiveRecord::Migration
  def change
    change_column :exams, :file, :binary, null:false
  end
end
