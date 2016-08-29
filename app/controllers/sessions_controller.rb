class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.find_by(email: params[:email])
    if @admin && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      redirect_to dashboards_path(@therpist.id)
    else
      flash.now[:alert] = "Email or password didn't match."
      render :new
    end
  end

  private

  def admin_params
    params.require(:email, :password)
  end
end
