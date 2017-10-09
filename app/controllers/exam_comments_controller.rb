class ExamCommentsController < ApplicationController

  def create
    exam_comment = ExamComment.new(exam_comment_params)
    exam_comment.user_id = current_user.id
    exam_comment.exam_id = params[:exam_id]
    exam_comment.save
    redirect_to :back
  end


  private
  def exam_comment_params
    params.require(:exam_comment).permit(:text, :status, :parent_id)
  end

end
