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
    user_id = current_user.id

    @resume.user_id = user_id

    if @resume.save
      flash.now[:notice] = 'Successfully resume created'
      redirect_to root_path
    else
      flash.now[:notice] = 'Unsuccessful in creating resume'
      if request.xhr?
        render json: {failed: 'Unsuccessful in creating resume'}
      else
        render :new
      end
    end

  end

  def edit
  end

  def update
  end
end
