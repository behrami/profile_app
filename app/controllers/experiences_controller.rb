class ExperiencesController < ApplicationController
  def index
    user_id = params[:user_id]
    @experiences = User.find_by(id: user_id).resume.experiences
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new
    user_id = params[:user_id]

    @experience.resume_id = User.find_by(id: user_id).resume.id
    @experience.name = params[:experience][:name]
    @experience.summary = params[:experience][:summary]
  end

  def edit
  end

  def update
  end

end
