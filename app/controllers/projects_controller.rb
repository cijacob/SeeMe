class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end 

  def new
    @project = Project.new
  end 

  def create

  end 
  
  def join_project
    @project = Project.new(project_params)
    @project.trainees.build

    if(@project.save)
        
    else
      render :new
    end 
  end 
  

  private 

  def project_params
    params.require(:projects).permit(:id, :title, :description, :trainees_attributes[:id, :name, :lastname, :telephone, :email])
  end 
end
