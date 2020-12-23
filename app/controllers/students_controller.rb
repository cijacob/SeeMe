class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params) 
    if @student.valid?
        redirect_to student_path(@student)
    else
      render :new
    end 
  end

  def show 
    @student= Student.find(params[:id])
  end 


  private 

  def student_params
    params.require(:student).permit(:name, :lastname, :telephone, :email, :project_id)
  end
end
