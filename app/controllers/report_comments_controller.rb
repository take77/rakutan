class ReportCommentsController < ApplicationController

  def create
    report_comment = ReportComment.new(report_comment_params)
    report_comment.user_id = current_user.id
    report_comment.report_id = params[:report_id]
    report_comment.save
    redirect_to :back
  end


  private
  def report_comment_params
    params.require(:report_comment).permit(:text, :status, :parent_id)
  end

end
