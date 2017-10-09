class NoteItemsController < ApplicationController

  def download
    @note_item = NoteItem.find(params[:id])
    filepath = @note_item.note_file.current_path
    stat = File::stat(filepath)
    send_file(filepath)
  end

end
