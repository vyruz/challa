class WelcomeController < ApplicationController
  before_filter :authenticate, only: [:show]
  def index
    user = User.where(id: session[:user_id]).first
    if user
      redirect_to "/home"
    end
  end
  def show
    @user = User.where(id: session[:user_id]).first
    @challenges = Challenge.all
    @user_challenges = @user.user_challenges
    @completed = Challenge.where(id: @user_challenges.where(status: "completed"))
  end
end
