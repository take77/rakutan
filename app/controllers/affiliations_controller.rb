class AffiliationsController < ApplicationController

  def new
    @affiliation = Affiliation.new
  end

 def create
    affiliation = Affiliation.create(create_params)
    if affiliation.save
      update(affiliation)
    else
      new_affiliation = already_exists(affiliation)
      update(new_affiliation)
    end
    redirect_to root_path
  end

  def update(affiliation)
    current_user.update_attributes(affiliation_id: affiliation.id)
  end

  def already_exists(affiliation)
    affiliation = Affiliation.find_by(:college => affiliation.college, :department => affiliation.department, :course => affiliation.course)
  end

  private
  def create_params
    params.require(:affiliation).permit(:college, :department, :course)
  end
end
