class BlogsController < ApplicationController
  def index
    @user_id = params[:user_id]
    @blogs = Blog.where(user_id: @user_id)
  end

  def show
    user_id = params[:user_id]
    id = params[:id]
    @blog = Blog.find_by(id: id)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.user_id = current_user.id
    @blog.title = params[:blog][:title]
    @blog.summary = params[:blog][:summary]
  end

  def edit
  end

  def update
  end

end
