class UsersController < ApplicationController
  def show
    id = params[:id]
    @user = User.find_by(id: id)
    @picture = @user.picture
    @first_name = @user.first_name
    @last_name = @user.last_name
    @title = @user.title
    @summary = @user.summary
    @phone = @user.phone
    @address = @user.address
    @email = @user.email
    @linkedin = @user.linkedin
    @github = @user.github
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.email = params[:user][:email]
    @user.phone = params[:user][:phone]
    @user.summary = params[:user][:summary]
    @user.picture = params[:user][:picture]
    @user.title = params[:user][:title]
    @user.linkedin = params[:user][:linkiedin]
    @user.github = params[:user][:github]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.profession_id = params[:user][:profession_id]

    if @user.save
      flash.now[:notice] = 'Successful Sign Up'
      redirect_to root_path
    else
      flash.now[:notice] = 'Unsuccessful Sign Up'
      if request.xhr?
        render json: {failed: 'Unsuccessful Sign Up'}
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
