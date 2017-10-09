class TopController < ApplicationController

  before_action :move_to_affiliation

  def index
    feed_content = FeedContent.includes(:content).order("updated_at DESC")
    @feed_contents = feed_content.map(&:content)
    @exams = Exam.order("updated_at DESC")
    @reports = Report.order("updated_at DESC")
    @notes = Note.order("updated_at DESC")
  end

  def move_to_affiliation
    if current_user.affiliation_id == 1
      redirect_to controller: :affiliations, action: :new
    end
  end
end
