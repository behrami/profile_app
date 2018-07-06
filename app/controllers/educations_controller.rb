class EducationsController < ApplicationController
  def index
    user_id = params[:user_id]
    @educations = User.find_by(id: user_id).resume.educations
  end

  def new
    @education = Education.new
  end

  def create
    @education = Education.new
    user_id = params[:user_id]

    @education.resume_id = User.find_by(id: user_id).resume.id
    @education.name = params[:education][:name]
    @education.school_name = params[:education][:school]
  end

  def edit
  end

  def update
  end
end
