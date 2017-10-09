class ClipsController < ApplicationController
  def index
    @user = current_user
    pre_clips = FeedContent.includes(:clip).order("updated_at DESC")
    @clips = pre_clips.map(&:clip)
    @clip_exams = ClipExam.order("updated_at DESC")
    @clip_notes = ClipNote.order("updated_at DESC")
    @clip_reports = ClipReport.order("updated_at DESC")
  end
end
