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
end
