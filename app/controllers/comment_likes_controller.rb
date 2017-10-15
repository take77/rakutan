class CommentLikesController < ApplicationController
  def create
    @comment_like = CommentLike.create(user_id: current_user.id, comment_id: params[:format])
    redirect_to :back
  end

  def destroy
    comment_like = CommentLike.find_by(user_id: current_user.id, comment_id: params[:id])
    comment_like.destroy
    redirect_to :back
  end
end
