class ClipExamsController < ApplicationController

  def create
    @user_id = current_user.id
    @exam_id = Exam.find(params[:id]).id
    @clip_exam = ClipExam.new(exam_id: @exam_id, user_id: @user_id)

    if @clip_exam.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @clip_exam = ClipExam.find(params[:id])
    if @clip_exam.destroy
      redirect_to :back
    end
  end

end
