class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find_by(school_id: (params[:school_id]))
    unless @student
      flash[:alert] = "Didn't recognize your student id."
      redirect_to root_path
    end
  end
end
