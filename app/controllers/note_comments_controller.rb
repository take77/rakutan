class NoteCommentsController < ApplicationController

  def create
    note_comment = NoteComment.new(note_comment_params)
    note_comment.user_id = current_user.id
    note_comment.note_id = params[:note_id]
    note_comment.save
    redirect_to :back
  end


  private
  def note_comment_params
    params.require(:note_comment).permit(:text, :status, :parent_id)
  end

end
