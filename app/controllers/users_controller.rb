class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @feed_contents = FeedContent.where(user_id: current_user.id).map(&:content)
    @exams = Exam.where(user_id: current_user.id).order("updated_at DESC")
    @reports = Report.where(user_id: current_user.id).order("updated_at DESC")
    @notes = Note.where(user_id: current_user.id).order("updated_at DESC")
  end
end
