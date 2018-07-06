class ProjectsController < ApplicationController
  def index
    user_id = params[:user_id]
    @projects = User.find_by(id: user_id).resume.projects
  end
end
