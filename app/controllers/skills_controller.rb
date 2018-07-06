class SkillsController < ApplicationController
  def index
    user_id = params[:user_id]
    @skills = User.find_by(id: user_id).resumes.first.skills
  end
end
