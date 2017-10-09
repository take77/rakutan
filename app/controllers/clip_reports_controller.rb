class ClipReportsController < ApplicationController

  def create
    @user_id = current_user.id
    @report_id = Report.find(params[:id]).id
    @clip_report = ClipReport.new(user_id: @user_id, report_id: @report_id)
    if @clip_report.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @clip_report = ClipReport.find(params[:id])
    if @clip_report.destroy
      redirect_to :back
    end
  end
end
