class ReportItemsController < ApplicationController

  def download
    @report_item = ReportItem.find(params[:id])
    filepath = @report_item.report_file.current_path
    stat = File::stat(filepath)
    send_file(filepath)
  end

end
