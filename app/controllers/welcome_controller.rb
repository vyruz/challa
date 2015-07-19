class WelcomeController < ApplicationController
  before_filter :authenticate, only: [:show]
  def index
    user = User.where(id: session[:user_id]).first
    if user
      redirect_to "/home"
    end
  end
  def show
  end
end
