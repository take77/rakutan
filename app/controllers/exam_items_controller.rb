class ExamItemsController < ApplicationController

  def download
    @exam_item = ExamItem.find(params[:id])
    filepath = @exam_item.exam_file.current_path
    stat = File::stat(filepath)
    send_file(filepath)
  end

end
