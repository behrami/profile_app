class ExperiencesController < ApplicationController
  def index
    user_id = params[:user_id]
    @experiences = User.find_by(id: user_id).resume.experiences
  end
end
