class ReportsController < ApplicationController

  def new
    @report = Report.new
    @report.report_items.build
    @subject = Subject.new
    @affiliation = Affiliation.new
  end

  def create

    if params[:checkbox_return] == "1"

      affiliation = Affiliation.create(affiliation_create_params)

      if affiliation.save
        new_affiliation = affiliation
      else
        new_affiliation = affiliation_already_exists(affiliation)
      end

    else
      new_affiliation = Affiliation.find(current_user.affiliation_id)
    end

    subject = Subject.new(subject_create_params)
    subject.affiliation_id = new_affiliation.id
    subject.save

    if subject.save
      new_subject = subject
    else
      new_subject = subject_already_exists(subject)
    end

    report = Report.new(report_create_params)
    report.affiliation_id = new_affiliation.id
    report.subject_id = new_subject.id
    report.user_id = current_user.id
    report.save
  end

  def show
    @report = Report.find(params[:id])
    @report_items = ReportItem.where(report_id: @report.id)
    @report_comment = ReportComment.new
    report_comments = ReportComment.where(report_id: @report.id)
    @report_parent_comments = report_comments.where(status: 0)
    @report_child_comments = report_comments.where(status: 1)
    exam = @exam
    @clip = clip_check(report, clip = 0)
  end

  def affiliation_already_exists(affiliation)
    affiliation = Affiliation.find_by(:college => affiliation.college, :department => affiliation.department, :course => affiliation.course)
  end

  def subject_already_exists(subject)
    subject = Subject.find_by(:name => subject.name, :professor => subject.professor, :affiliation_id => subject.affiliation_id)
  end

  def clip_check(report, a_clip)
    report_id = reprot.id
    feed_content_id = FeedContent.find_by(content_id: report_id).id
    if Clip.find_by(feed_content_id: feed_content_id)
      a_clip = Clip.find_by(feed_content_id: feed_content_id).id
    else
      a_clip = 0
    end
  end

  private
  def affiliation_create_params
    params.require(:affiliation).permit(:college, :department, :course)
  end

  def subject_create_params
    params.require(:subject).permit(:name, :professor, :affiliation_id)
  end

  def report_create_params
    params.require(:report).permit(:title, :deadline, :explanation, :affiliation_id, :subject_id,
        report_items_attributes:[:report_file])
  end

end
