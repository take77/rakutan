class AffiliationsController < ApplicationController

  def new
    @affiliation = Affiliation.new
  end

  def create
    affiliation = Affiliation.where(:college => params[:college], :department => params[:department], :course => params[:course]).first_or_create(create_params)
    current_user.update_attributes(affiliation_id: affiliation.id)
    redirect_to controller: :top, action: :index
  end

  private
  def create_params
    params.require(:affiliation).permit(:college, :department, :course)
  end
end
