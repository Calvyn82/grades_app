class DashboardsController < ApplicationController
  before_filter :ensure_admin

  def show
    @students = Student.order_by(:last_name).group_by(:hour)
  end

  def new
    @students = []
  end

  def create
    @students.each do |s| 
      Student.create(
      first_name: s[:first_name],
      school_id:  s[:school_id],
      grade:      s[:grade],
      hour:       s[:hour])
    end
  end

  def destroy
    @students.each do |s|
      Student.delete(school_id: s[:school_id])
    end
  end
end
