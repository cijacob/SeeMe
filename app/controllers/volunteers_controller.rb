class VolunteersController < ApplicationController
  def new
    
  end

  def create
  end

  private 

  def vonlunteer_params
    params.require(:volunteers).permit(:id, :section_id, :subsection_id)
  end 
end
