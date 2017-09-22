class TopController < ApplicationController

  before_action :move_to_affiliation

  def index
    feed_content = current_user.affiliation.feed_contents.includes(:content)
    @feed_contents = feed_content.map(&:content)
    @exams = Exam.where(affiliation_id: current_user.affiliation_id).order("updated_at DESC")
    @reports = Report.where(affiliation_id: current_user.affiliation_id).order("updated_at DESC")
    @notes = Note.where(affiliation_id: current_user.affiliation_id).order("updated_at DESC")
  end

  def move_to_affiliation
    if current_user.affiliation_id == 1
      redirect_to controller: :affiliations, action: :new
    end
  end
end
