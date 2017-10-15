class ClipsController < ApplicationController
  def index
    clips = Clip.where(user_id: current_user.id)
    pick_id(clips, ids=[])
    pick_feed_content(ids, feed_contents=[])
    @clips = feed_contents.map(&:content)
    pre_exams = feed_contents.select{ |pre| pre[:content_type] == "Exam"}
    @exams = pre_exams.map(&:content)
    pre_reports = feed_contents.select{ |pre| pre[:content_type] == "Report"}
    @reports = pre_reports.map(&:content)
    pre_notes = feed_contents.select{ |pre| pre[:content_type] == "Note"}
    @notes = pre_notes.map(&:content)
  end

  def create
    user_id = current_user.id
    feed_content_id = FeedContent.find(params[:feed_content_id]).id
    clip = Clip.create(user_id: user_id, feed_content_id: feed_content_id)
    redirect_to :back
  end

  def destroy
    Clip.find(params[:id]).destroy
    redirect_to :back
  end

  def pick_id(clips, ids)
    clips.each do |clip|
      feed_content_id = clip.feed_content_id
      ids << feed_content_id
    end
  end

  def pick_feed_content(ids, feed_contents)
    ids.each do |id|
      feed_content = FeedContent.find(id)
      feed_contents << feed_content
    end
  end

  private
  def clip_params
    params.require(:clip).permit(:user_id, :feed_content_id)
  end
end
