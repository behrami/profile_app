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
  end

  def create
  end

  def edit
  end

  def update
  end
end
