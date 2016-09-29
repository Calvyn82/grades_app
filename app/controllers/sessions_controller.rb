class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.find_by(email: params[:admin][:email])
    if @admin && @admin.authenticate(params[:admin][:password])
      session[:admin_id] = @admin.id
      redirect_to dashboard_path(@admin.id)
    else
      flash.now[:alert] = "Email or password didn't match."
      @admin = Admin.new
      render :new
    end
  end
end
