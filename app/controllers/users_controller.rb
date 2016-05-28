class UsersController < ApplicationController
  before_filter :set_user, only: [:show]

  def index
    if !params[:name].nil?
      @user = User.new(params[:name])
      @users = @user.search
    else
      @users = []
    end
  end

  def show
  end

  private

  def set_user
    @user = User.repos(params[:id])
  end

end
