class SkillsController < ApplicationController
  def index
    user_id = params[:user_id]
    @skills = User.find_by(id: user_id).resume.skills
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new
    user_id = params[:user_id]

    @skill.resume_id = User.find_by(id: user_id).resume.id
    @skill.name = params[:skill][:name]
  end

  def edit
  end

  def update
  end

end
