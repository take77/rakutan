class RemoveFileToExam < ActiveRecord::Migration
  def change
    remove_column :exams, :file, :binary, nul: false
  end
end
