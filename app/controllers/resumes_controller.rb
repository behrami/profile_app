class ResumesController < ApplicationController
  def show
    user_id = params[:user_id]
    @user = User.find_by(id: user_id)
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new
  end

  def edit
  end

  def update
  end
end
