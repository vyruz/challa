class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def authenticate
      user = User.where(id: session[:user_id]).first
      if user
        @permission = user.role
      else
        redirect_to root_url(notice: "Please sign in before exploring our community")
      end
    end
end
