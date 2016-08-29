class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def ensure_admin
    unless current_admin
      session[:return_to] = request.url
      redirect_to root_path
    end
  end

  def current_admin
    session[:admin_id] && Admin.find(session[:admin_id])
  end

  helper_method :current_admin
end
