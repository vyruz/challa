class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions/new
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = user.id
      redirect_to root_url(:notice => "You have successfully signed in!")
    else
      redirect_to login_url(:notice => "Nonexistent user")
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to root_url(notice: "You have successfull signed out")
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def session_params
    params[:session]
  end
end
