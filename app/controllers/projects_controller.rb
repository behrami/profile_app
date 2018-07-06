class ProjectsController < ApplicationController
  def index
    user_id = params[:user_id]
    @projects = User.find_by(id: user_id).resume.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    user_id = params[:user_id]

    @project.resume_id = User.find_by(id: user_id).resume.id
    @project.name = params[:project][:name]
    @project.summary = params[:project][:summary]
  end

  def edit
  end

  def update
  end

end
