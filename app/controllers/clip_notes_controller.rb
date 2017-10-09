class ClipNotesController < ApplicationController

  def create
    @user_id = current_user.id
    @note_id = Note.find(params[:id]).id
    @clip_note = ClipNote.new(note_id: @note_id, user_id: @user_id)

    if @clip_note.save
      redirect_to :back
    else
      rediredt_to :back
    end
  end

  def destroy
    @clip_note = ClipNote.find(params[:id])
    if @clip_note.destroy
      redirect_to :back
    end
  end
end
