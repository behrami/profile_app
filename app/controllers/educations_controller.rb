class EducationsController < ApplicationController
  def index
    user_id = params[:user_id]
    @educations = User.find_by(id: user_id).resume.educations
  end
end
