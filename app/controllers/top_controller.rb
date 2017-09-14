class TopController < ApplicationController

  before_action :move_to_affiliation

  def index
  end

  def move_to_affiliation
    if current_user.affiliation_id == 1
      redirect_to controller: :affiliations, action: :new
    end
  end
end
