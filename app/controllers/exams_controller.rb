class ExamsController < ApplicationController

  def new
    @exam = Exam.new
    @exam.exam_items.build
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

    exam = Exam.new(exam_create_params)
    exam.affiliation_id = new_affiliation.id
    exam.subject_id = new_subject.id
    exam.user_id = current_user.id
    exam.save
  end

  def show
    @exam = Exam.find(params[:id])
    @exam_items = ExamItem.where(exam_id: @exam.id)
    @exam_comment = ExamComment.new
    exam_comments = ExamComment.where(exam_id: @exam.id)
    @exam_parent_comments = exam_comments.where(status: 0)
    @exam_child_comments = exam_comments.where(status: 1)
    exam = @exam
    @clip = clip_check(exam, clip = 0)
  end

  def affiliation_already_exists(affiliation)
    affiliation = Affiliation.find_by(:college => affiliation.college, :department => affiliation.department, :course => affiliation.course)
  end

  def subject_already_exists(subject)
    subject = Subject.find_by(:name => subject.name, :professor => subject.professor, :affiliation_id => subject.affiliation_id)
  end

  def clip_check(exam, a_clip)
    exam_id = exam.id
    pre_feed_content = FeedContent.where(user_id: current_user.id)
    feed_content_id = pre_feed_content.find_by(content_id: exam_id).id
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

  def exam_create_params
    params.require(:exam).permit(:title, :taken_date, :explanation, :affiliation_id, :subject_id,
        exam_items_attributes:[:exam_file])
  end
end