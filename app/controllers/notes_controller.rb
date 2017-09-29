class NotesController < ApplicationController

  def new
    @note = Note.new
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

    note = Note.new(note_create_params)
    note.affiliation_id = new_affiliation.id
    note.subject_id = new_subject.id
    note.user_id = current_user.id
    note.save
  end

  def show
    @note = Note.find(params[:id])
    @item = Item.find_by(note_id: @note.id)
  end

  def affiliation_already_exists(affiliation)
    affiliation = Affiliation.find_by(:college => affiliation.college, :department => affiliation.department, :course => affiliation.course)
  end

  def subject_already_exists(subject)
    subject = Subject.find_by(:name => subject.name, :professor => subject.professor, :affiliation_id => subject.affiliation_id)
  end

  private
  def affiliation_create_params
    params.require(:affiliation).permit(:college, :department, :course)
  end

  def subject_create_params
    params.require(:subject).permit(:name, :professor, :affiliation_id)
  end

  def note_create_params
    params.require(:note).permit(:title, :taken_date, :explanation, :affiliation_id, :subject_id,
        items_attributes:[:file, :exam_id, :report_id, :user_id])
  end

end
