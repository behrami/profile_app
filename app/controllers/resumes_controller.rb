class ResumesController < ApplicationController
  def show
    user_id = params[:user_id]
    @user = User.find_by(id: user_id)
  end
end
