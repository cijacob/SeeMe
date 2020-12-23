class TraineesController < ApplicationController

  def new
    @trainee = Trainee.new
  end

  def create  
    @trainee = Trainee.new(trainee_params)
    if @trainee.valid?
      @trainee.save
      redirect_to trainee_path(@trainee)
    else
      render :new
    end
  end 

  def show
  end

  private 

  def trainee_params
    params.require(:trainee).permit(:name, :lastname, :telephone, :email, :project_attributes[:title])
  end 
end
