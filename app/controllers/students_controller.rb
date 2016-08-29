class StudentsController < ApplicationController
  def show
    @student = Student.find_by(school_id: (params[:school_id]))
  end
end
